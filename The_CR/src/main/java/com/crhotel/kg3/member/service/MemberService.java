package com.crhotel.kg3.member.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;

import com.crhotel.kg3.member.vo.MemberVO;

public interface MemberService {
	
	// 회원가입
	void joinMember(MemberVO membervo) throws Exception;
		
	// ID중복 체크
	int idCheck(MemberVO membervo) throws Exception;
		
	//로그인
	public MemberVO login(MemberVO membervo) throws Exception;
	
	// ID찾기
	public String idfind(@Param("name") String name,@Param("tel") String tel) throws Exception;

	//이메일발송
	public void sendEmail(MemberVO vo, String div) throws Exception;

	//비밀번호찾기
	public void findPw(HttpServletResponse res, MemberVO vo) throws Exception;

	// 비밀번호 변경
	public int updatePw(MemberVO vo) throws Exception;
	
	// 회원정보
	public MemberVO meminfo(MemberVO membervo) throws Exception;
	
	// 회원탈퇴
	public void memberDelete(@Param("id") String id,@Param("pw") String pw) throws Exception;

	//회원정보리스트 출력
	public List<MemberVO> MemberList();
	
	// 관리자 회원삭제
	public void memDelete(@Param("id") String id);
}
