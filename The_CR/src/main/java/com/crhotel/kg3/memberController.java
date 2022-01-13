package com.crhotel.kg3;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crhotel.kg3.member.service.MemberService;
import com.crhotel.kg3.member.vo.MemberVO;
import com.crhotel.kg3.room.vo.RoomVO;

@Controller
public class memberController {
	
	@Resource(name = "memberService")
	private MemberService memberService;
	
	// 회원가입 
	@RequestMapping(value="/join.do")
	public String joinmemer(@ModelAttribute("memberVO")
				MemberVO memberVO, Model model) throws Exception{
		int idck=memberService.idCheck(memberVO);
		String id=memberVO.getId();
		
		if(id.length() <= 4) {
			model.addAttribute("msg", "ID를 다섯자 이상으로 해주십시오.");
			model.addAttribute("url","joinform.do");
		}
		
		else if(idck == 1) {
			model.addAttribute("msg", "아이디 중복");
			model.addAttribute("url","joinform.do");
			
			
		}else if(idck == 0) {
			
			memberService.joinMember(memberVO);
			model.addAttribute("msg", "회원가입 완료");
			model.addAttribute("url","loginform.do");
			
		}
		
		return "member/redirect";
	}
	
	// 로그인 
	@RequestMapping(value="/login.do")
	public String login(@ModelAttribute("memberVO")
					MemberVO memberVO, Model model, HttpServletRequest req) throws Exception{
		HttpSession session = req.getSession();
		
		MemberVO login = memberService.login(memberVO);
		
		if(login == null) {
			session.setAttribute("member", null);
			model.addAttribute("msg","아이디나 비밀번호가 틀렸습니다.");
			model.addAttribute("url","loginform.do");
			
			return "member/redirect";
			
		}else {
			session.setAttribute("id",login.getId());
			session.setAttribute("member", login);
		}
		
		return "index";
	}
	
	// 로그아웃
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "index";
	}
	
	// 아이디찾기
	@RequestMapping(value="/idfind.do")
	public String idfind(@RequestParam("name") String name, 
			@RequestParam("tel") String tel,
					 Model model) throws Exception{
		
		String member = memberService.idfind(name, tel);
		String id= "아이디 : "+ member;
			
		if(member != null) {
		model.addAttribute("msg", id);
		model.addAttribute("url","loginform.do");
		} else if(member == null) {
			model.addAttribute("msg", "정보가 일치하지 않습니다");
			model.addAttribute("url","id_find.do");
		}
		
		return "member/redirect";
	}
	
	// 비밀번호찾기
	@RequestMapping(value="/pwfind.do")
	public String findPwPOST(@ModelAttribute MemberVO member, HttpServletResponse response) throws Exception{
		memberService.findPw(response, member);
		
		return "member/redirect";
		
	}
	
	// 비밀번호변경
	@RequestMapping(value="/pw_change.do")
	public String pwChange(@ModelAttribute MemberVO member, Model model,HttpSession session) throws Exception{
		memberService.updatePw(member);
		session.invalidate();
		model.addAttribute("msg", "패스워드 변경 완료. 변경한 번호로 다시 로그인 하십시오.");
		model.addAttribute("url","loginform.do");
		return "member/redirect";
	}
	// 회원삭제
	@RequestMapping(value="/deletemem.do")
	public String delete(@RequestParam("id") String id, 
			@RequestParam("pw") String pw,@RequestParam("pw1") String pw1,
			 Model model, HttpSession session) throws Exception {
		
		if(!pw1.equals(pw)) {
			model.addAttribute("msg", "비밀번호 불일치.");
			model.addAttribute("url","deleteform.do");
			
			return "member/redirect";
		}
		else {
		memberService.memberDelete(id,pw);
		
		model.addAttribute("msg", "그 동안 저희 당근호텔을 이용해주셔서 감사합니다.");
		model.addAttribute("url","index.do");
				
		session.invalidate();
		return "member/redirect";
		}
	} 
	
	/* 관리자용 회원 목록 */
	@RequestMapping(value = "ownerpage_mem.do")
	public String listGET(@ModelAttribute("memberVO") MemberVO vo, Model model) throws Exception{
		// 1. 관리자 세션 제어
		List<MemberVO> memlist = memberService.MemberList();
		
		model.addAttribute("memberList", memberService.MemberList());

		return "owner/ownerpage_mem";
	}
	// 관리자 회원 삭제
	@RequestMapping(value="deletemember.do")
	public String memDelete(@RequestParam("id") String id) {
		System.out.println("id=" + id);
		memberService.memDelete(id);
		
		return "redirect:/ownerpage_mem.do";
	}
}
