package com.crhotel.kg3.member.service.impl;

import java.io.PrintWriter;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crhotel.kg3.member.service.MemberService;
import com.crhotel.kg3.member.service.dao.MemberDAO;
import com.crhotel.kg3.member.vo.MemberVO;
import com.crhotel.kg3.room.vo.RoomVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO member;
	
	// 회원가입
	public void joinMember(MemberVO memberVO) throws Exception {

		member.joinMember(memberVO);
	}
	
	// 아이디중복체크
	public int idCheck(MemberVO memberVO) throws Exception{
		
		int result =member.idCheck(memberVO);
		
		return result;
		
	}

	
	// 로그인
	@Override
	public MemberVO login(MemberVO membervo) throws Exception {
		// TODO Auto-generated method stub
		
		return member.login(membervo);
	}

	// ID찾기
	@Override
	public String idfind(String name,String tel) throws Exception {
		// TODO Auto-generated method stub
		
		return member.idfind(name, tel);
	}
	
	//비밀번호 찾기 이메일발송
	@Override
	public void sendEmail(MemberVO vo, String div) throws Exception {
		
		
		// Mail Server 설정
		String charSet = "UTF-8";
		String hostSMTP = "smtp.gmail.com"; //네이버 이용시 smtp.naver.com
		String hostSMTPid = "tallore31@gmail.com";
		String hostSMTPpwd = "feajiibdxtcnujzl";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "tallore31@gmail.com";
		String fromName = "Hotel";
		String subject = "";
		String msg = "";

		if(div.equals("findpw")) {
			subject = "임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += vo.getId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += vo.getPw() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = vo.getMail();
		try {
			HtmlEmail email = new HtmlEmail();
			
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(false);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587);			
			
			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setStartTLSEnabled(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}

	//비밀번호찾기
	@Override
	public void findPw(HttpServletResponse response, MemberVO vo) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		MemberVO ck = member.meminfo(vo);
		PrintWriter out = response.getWriter();
		// 가입된 아이디가 없으면
		if(member.idCheck(vo) == 0) {
			out.println("<script>alert('등록되지 않은 아이디입니다.'); history.go(-1);</script>");
			out.close();
		}
		// 가입된 이메일이 아니면
		else if(!vo.getMail().equals(ck.getMail())) {
			out.println("<script>alert('등록되지 않은 이메일입니다.'); history.go(-1);</script>");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			ck.setPw(pw);
			// 비밀번호 변경
			member.updatePw(ck);
			// 비밀번호 변경 메일 발송
			sendEmail(ck, "findpw");

			out.println("<script>alert('이메일로 임시 비밀번호를 발송하였습니다.'); location.href='loginform.do'; </script>");
			out.close();
		}
	}

	// 비밀번호 변경
	@Override
	public int updatePw(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return member.updatePw(vo);
	}
	
	// 회원정보
	@Override
	public MemberVO meminfo(MemberVO membervo) throws Exception {
		// TODO Auto-generated method stub
		
		return member.meminfo(membervo);
	}
	
	// 회원탈퇴
	@Override
	public void memberDelete(String id, String pw) throws Exception{
		member.memberDelete(id, pw);
	}
	
	//전체 회원 정보
	@Override
	public List<MemberVO> MemberList() {
		//while문 대신 selectList하면 됨! 세상간단!
		List<MemberVO> memberList = member.MemberList();
		System.out.println("DAO: getMemberList결과 - "+memberList);
		
		return memberList;
		//아래처럼 나타낼 수 있으나 변수에 담은 이유는 캐스팅이 필요없음을 보여주고 콘솔에 출력하고자함임
		//return sqlSession.selectList(namespace+".memberList");	
	}
	
	@Override
	public void memDelete(String id) {
		member.memDelete(id);
	}
			
}
