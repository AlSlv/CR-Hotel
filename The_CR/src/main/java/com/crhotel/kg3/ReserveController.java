package com.crhotel.kg3;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crhotel.kg3.reserve.service.ReserveService;
import com.crhotel.kg3.reserve.vo.ReserveVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ReserveController {
		
	@Resource(name="reserveService")
	private ReserveService reserveService;
	
	//결제완료
	@RequestMapping(value="payend.do")
	public String payend() {
		return "reserve/payend";
	}
	//예약 가능한 방 검색
	@RequestMapping(value="/reserveSearch.do")
	public String rsSearch(@ModelAttribute("reserveVO") ReserveVO reserveVO, Model model, HttpServletRequest req) {
		
		ArrayList <ReserveVO> alist = reserveService.allRs(reserveVO);
		
		Date ckin = reserveVO.getCkin();
		Date ckout = reserveVO.getCkout();
		
		model.addAttribute("alist",alist);
		
		req.setAttribute("ckin", ckin);
		req.setAttribute("ckout", ckout);
		
		System.out.println(reserveVO.toString());
		
		return "reserve/reserveStep1";
		
	}
	//예약하러 가기
	@RequestMapping(value="/reserveGo.do")
	   public String reserveGo(@ModelAttribute("reserveVO") ReserveVO reserveVO,Model model,HttpServletRequest req, HttpSession session) {
	      if(session.getAttribute("member") == null) {
	         model.addAttribute("msg", " 로그인 하십시오.");
	         model.addAttribute("url","loginform.do");
	         return "member/redirect";
	      }
		 int price = Integer.parseInt(req.getParameter("price"));
			String ckin = req.getParameter("ckin");
			String ckout = req.getParameter("ckout");
			int rnum = Integer.parseInt(req.getParameter("rnum"));
			String rmname = req.getParameter("rmname");
			
			
			req.setAttribute("price",price);
			req.setAttribute("ckin",ckin);
			req.setAttribute("ckout",ckout);
			req.setAttribute("rnum",rnum);
			req.setAttribute("rmname",rmname);
			
			System.out.println(reserveVO.toString());
		      
			return "reserve/reserveStep2";
	       
	      
	      
	}
	
	//결제창 페이지 
	@RequestMapping(value="/payGo.do",method=RequestMethod.POST)
	public String payGo() {
		return "reserve/pay";
	}
	
	//예약 DB 입력
	@RequestMapping(value="/insertRs.do")
	public String insertRs(@ModelAttribute("reserveVO") ReserveVO reserveVO, Model model,HttpServletResponse response) throws IOException {
		reserveService.insertRs(reserveVO);
		
		System.out.println(reserveVO.toString());
		return "reserve/pay";
	}

	//관리자 - 예약 리스트 출력
	@RequestMapping(value="/ownerRes.do")
	public String ownerRes(@ModelAttribute("reserveVO") ReserveVO reserveVO, Model model, HttpServletRequest req) {
		ArrayList<ReserveVO> alist = reserveService.ownerRes(reserveVO);
		model.addAttribute("alist",alist);
		System.out.println(reserveVO.toString());
		return "owner/ownerpage_res";
	}
	
	//관리자 - 예약 선택삭제
	@RequestMapping(value="/ownerResDelete.do")
	public String ownerResDelete(HttpServletRequest req) {
		String[] ajaxMsg = req.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for(int i=0;i<size;i++) {
			reserveService.ownerResDelete(ajaxMsg[i]);
		}
		
		return "redirect:/ownerRes.do";
	}
	
	//관리자 - 예약 검색
	@RequestMapping(value="/ownerSearch.do")
	public String ownerSearch(@ModelAttribute("reserveVO")ReserveVO reserveVO, Model model,HttpServletRequest req) {
		String select_option = req.getParameter("select_option");
		String keyword = req.getParameter("keyword");
		String ckin = req.getParameter("ckin");
		String ckout = req.getParameter("ckout");
		   				
		HashMap <String,String> hMap = new HashMap<String, String>();
		hMap.put("select_option",select_option);
		hMap.put("keyword",keyword);
		hMap.put("ckin",ckin);
		hMap.put("ckout",ckout);
		
		ArrayList<ReserveVO> alist = reserveService.ownerSearch(hMap);
		model.addAttribute("alist",alist);
		System.out.println(reserveVO.toString());
		return "owner/ownerpage_res";
	}
	
	//관리자 - 객실 현황판
	@RequestMapping(value ="/ownersonck.do")
    public String ownersonck(@ModelAttribute("reserveVO") ReserveVO reserveVO,Model model,HttpServletRequest req) {
        ArrayList <ReserveVO> alist = reserveService.ownersonck(reserveVO);
        model.addAttribute("alist",alist);
        return "owner/ownerpage_sonck";
        }
	
	//사용자의 예약 확인
	@RequestMapping(value="/reservationck.do")
    public String myres(@ModelAttribute("reserveVO") ReserveVO reserveVO, Model model,HttpServletRequest req) {
        HttpSession session = req.getSession();
        String id = (String) session.getAttribute("id");
        reserveVO.setId(id);
        ArrayList<ReserveVO> alist = reserveService.myres(reserveVO);
        model.addAttribute("alist",alist);
        System.out.println(reserveVO.toString());
        return "mypage/myres";
    }
	
	//사용자의 예약 취소
	 @RequestMapping(value="/resCancle.do")
	    public String resCancle(ReserveVO reserveVO,Model model) {
	        reserveService.resCancle(reserveVO);
	        model.addAttribute("msg", "예약 취소를 요청했습니다.");
	        model.addAttribute("url","index.do");
	        return "member/redirect";
	    }
}
