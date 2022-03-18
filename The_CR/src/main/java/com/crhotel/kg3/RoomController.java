package com.crhotel.kg3;

import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crhotel.kg3.room.service.RoomService;
import com.crhotel.kg3.room.vo.RoomVO;


/**
 * Handles requests for the application home page.
 */
@Controller
public class RoomController {
	
	@Resource(name="roomService")
	private RoomService service;
	
	
	//객실 목록 전체보기
	@RequestMapping(value="/roomList.do")
	public String roomList(@ModelAttribute("roomVO") RoomVO roomvo, Model model) {
		ArrayList<RoomVO> alist = service.roomList(roomvo);
		model.addAttribute("alist",alist);
		System.out.println(roomvo.toString());
		return "owner/ownerpage_room";
	}
	
	//객실 목록 하나보기
	@RequestMapping(value="/getRoomInfo.do")
	public String getRoomInfo(@ModelAttribute("roomVO")RoomVO roomvo, Model model) {
		model.addAttribute("roomVO",service.getRoomInfo(roomvo));
		System.out.println(roomvo.toString());
		return "owner/ownerpage_roomInfo";
	}
	
	//객실 추가
	@RequestMapping(value="/roomInsert.do")
	public String roomInsert(@ModelAttribute("roomVO")RoomVO roomvo) {
		service.roomInsert(roomvo);
		return "redirect:/roomList.do";
	}
	
	//객실 수정
	@RequestMapping(value="/roomUpdate.do")
	public String roomUpdate(RoomVO roomvo) {
		service.roomUpdate(roomvo);
		System.out.println(roomvo.toString());
		return "redirect:/roomList.do";
	}
	
	//객실 삭제
	@RequestMapping(value="/roomDelete.do")
	public String roomDelete(RoomVO roomvo) {
		service.roomDelete(roomvo);
		return "redirect:/roomList.do";
	}
}