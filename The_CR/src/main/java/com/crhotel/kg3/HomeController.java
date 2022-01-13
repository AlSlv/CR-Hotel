package com.crhotel.kg3;

import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crhotel.kg3.inquery.service.CrhotelService;
import com.crhotel.kg3.inquery.vo.AnswerVO;
import com.crhotel.kg3.inquery.vo.Criteria;
import com.crhotel.kg3.inquery.vo.PageMaker;
import com.crhotel.kg3.inquery.vo.QuestionVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@RequestMapping(value = "/popup.do")
	public String popup() {
		return "popup";
	}

	@RequestMapping(value = "/accommodation.do")
	public String accommodation() {
		return "/Rooms/Accommodation";
	}

	
	@RequestMapping(value = "/promotion.do")
	public String promotion() {
		return "/Promotion/Promotion&Package";
	}

	@RequestMapping(value = "/around.do")
	public String around() {
		return "/Promotion/Around";
	}

	@RequestMapping(value = "/question.do")
	public String question() {
		return "redirect:/getAllBoard.do";
	}

	@RequestMapping(value = "/contact.do")
	public String contact() {
		return "/inquires/contact";
	}

	// 전체보기
	// ==============================================================================================================
	@RequestMapping(value = "/getAllBoard.do")
	public String getAllBoard(QuestionVO questionVO, AnswerVO  answerVO, Model model, Criteria cri) throws Exception {
		
		// 게시글 총 갯수
		int count = getAllCount(questionVO);
		// 답변 총 갯수
		int countA = getAllCountA(answerVO);
		// 답변율
		int AnswerRate = 0;
		if (countA != 0)
			AnswerRate = countA * 100 / count;
		// 평균 답변 시간
		double AvgTime = 0.00;
		if (countA != 0) {
			// 총 답변 소요  시간
			int AnswerTime = getAnswerTime();
			AvgTime = Math.round(AnswerTime * 100.0 / countA / 24) / 100.0;
		}
        
		ArrayList<QuestionVO> alist = crhotelService.getAllBoard(cri);
		
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(count);
        
        model.addAttribute("alist", alist);
		model.addAttribute("count", count);
		model.addAttribute("countA", countA);
		model.addAttribute("AnswerRate", AnswerRate);
		model.addAttribute("AvgTime", AvgTime);
		model.addAttribute("pageMaker", pageMaker);

		return "/inquires/QAllList";
	}

	// 클릭한 게시물 열람
	// ========================================================================================================
	@RequestMapping(value = "/InOneBoard.do")
	public String getOneBoard(QuestionVO questionVO, AnswerVO answerVO, Model model) {
		QuestionVO vo1 = getOneQuestion(questionVO, model);
		model.addAttribute("voq", vo1);
		if (vo1.getAnswer_check().equals("답변 완료")) {	// 답변이 있는 경우에만 답변 DB 불러오기 실행
			AnswerVO vo2 = getOneAnswer(answerVO, model);
			model.addAttribute("voa", vo2);
		}
		return "/inquires/OneBoard";
	}

	// 문의 DB 불러오기
	public QuestionVO getOneQuestion(@ModelAttribute("questionVO") QuestionVO questionVO, Model model) {
		return crhotelService.getOneQuestion(questionVO);
	}

	// 답변 DB 불러오기
	public AnswerVO getOneAnswer(@ModelAttribute("answerVO") AnswerVO answerVO, Model model) {
		return crhotelService.getOneAnswer(answerVO);
	}

	// 입력하기
	// ==============================================================================================================
	// 자동 글번호 생성 함수
	public @ResponseBody int getNext(@ModelAttribute("questionVO") QuestionVO questionVO, Model model) {
		return crhotelService.getLastNum(questionVO);
	}

	// 질문 입력
	@RequestMapping(value = "/GInsert.do")
	public String guestInsertForm(@ModelAttribute("questionVO") QuestionVO questionVO, Model model) throws Exception {
		int num = getNext(questionVO, model); // 입력 페이지로 자동 생성한 글번호 전송
		model.addAttribute("num", num);
		model.addAttribute("msg", "문의글 등록이 완료되었습니다");
		return "/inquires/GuestInsert";
	}

	@RequestMapping(value = "/guestInsert.do")
	public String questionInsert(@ModelAttribute("questionVO") QuestionVO questionVO, Model model) {
		crhotelService.insertQuestion(questionVO);
		return "redirect:/getAllBoard.do";
	}

	// 답변 입력
	@RequestMapping(value = "/MInsert.do")
	public String managerInsertForm(@ModelAttribute("answerVO") AnswerVO answerVO, Model model) throws Exception {
		model.addAttribute("msg", "답변글 등록이 완료되었습니다");
		return "/inquires/ManagerInsert";
	}

	@RequestMapping(value = "/managerInsert.do")
	public String answerInsert(@ModelAttribute("answerVO") AnswerVO answerVO, Model model) {
		crhotelService.insertAnswer(answerVO);
		return "redirect:/getAllBoard.do";
	}

	// 수정하기
	// ==============================================================================================================
	// 질문 수정
	@RequestMapping(value = "/InGUpdate.do")
	public String questionUpdateForm(QuestionVO questionVO, Model model) throws ClassNotFoundException, SQLException {
		QuestionVO voq = getOneQuestion(questionVO, model);
		model.addAttribute("voq", voq);
		return "/inquires/GUpdate";
	}
	@RequestMapping(value = "/updateQuestion.do")
	public String questionUpdate(@ModelAttribute("questionVO") QuestionVO questionVO, Model model)
			throws ClassNotFoundException, SQLException {
		crhotelService.updateQuestion(questionVO);
		model.addAttribute("msg", "문의글 수정이 완료되었습니다");
		return "redirect:/getAllBoard.do";
	}
	// 답변 수정
	@RequestMapping(value = "/InMUpdate.do")
	public String answerUpdateForm(AnswerVO answerVO, Model model) throws ClassNotFoundException, SQLException {
		AnswerVO voa = getOneAnswer(answerVO, model);
		model.addAttribute("voa", voa);
		return "/inquires/MUpdate";
	}
	@RequestMapping(value = "/updateAnswer.do")
	public String answerUpdate(@ModelAttribute("answerVO") AnswerVO answerVO, Model model)
			throws ClassNotFoundException, SQLException {
		crhotelService.updateAnswer(answerVO);
		model.addAttribute("msg", "답변글 수정이 완료되었습니다");
		return "redirect:/getAllBoard.do";
	}
	
	// 삭제하기
	// ==============================================================================================================
	@RequestMapping(value = "/deleteBoard.do")
	public String boardDelete(QuestionVO questionVO, Model model) throws ClassNotFoundException, SQLException {
		crhotelService.deleteBoard(questionVO);

		return "redirect:/getAllBoard.do";
	}
	
	@RequestMapping(value = "/deleteABoard.do")
	public String boardADelete(AnswerVO answerVO, Model model) throws ClassNotFoundException, SQLException {
		crhotelService.deleteABoard(answerVO);

		return "redirect:/getAllBoard.do";
	}
	
	
	// 검색하기
	// ==============================================================================================================
	@RequestMapping(value = "/searchBoard.do")
	public String boardSearch(QuestionVO questionVO, AnswerVO  answerVO, Model model, String type, String keyword, Criteria cri) throws ClassNotFoundException, SQLException {
		
		// 게시글 총 갯수
		int count = getAllCount(questionVO);
		// 답변 총 갯수
		int countA = getAllCountA(answerVO);
		// 답변율
		int AnswerRate = countA * 100 / count;
		// 총 답변 소요  시간
		int AnswerTime = getAnswerTime();
		// 평균 답변 시간
		double AvgTime = Math.round(AnswerTime * 100.0 / countA / 24) / 100.0;
		
		ArrayList<QuestionVO> alist = crhotelService.searchBoard(type, keyword, cri);
		
		PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(count);
        
		model.addAttribute("count", count);
		model.addAttribute("countA", countA);
		model.addAttribute("AnswerRate", AnswerRate);
		model.addAttribute("AvgTime", AvgTime);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("alist", alist);
		
		return "/inquires/QAllList";
	}
	
	// 페이징 처리
	// ============================================================================================================
	// 전체 게시글 수 확인 함수
	public @ResponseBody int getAllCount(QuestionVO questionVO) {
		return crhotelService.getAllCount(questionVO);
	}
	// 전체 답변 수 확인 함수 
	public @ResponseBody int getAllCountA(AnswerVO answerVO) {
		return crhotelService.getAllCountA(answerVO);
	}
	public @ResponseBody int getAnswerTime() {
		return crhotelService.getAnswerTime();
	}

	@Resource(name = "crhotelService")
	private CrhotelService crhotelService;
	
	
	// 개요
	@RequestMapping(value="about.do")
	public String aboutHotel() {
		return "introHotel/aboutHotel";
	}
	// 오시는길
	@RequestMapping(value="map.do")
	public String map() {
		return "introHotel/mapHotel";
	}
	// 수상내역
	@RequestMapping(value="award.do")
	public String award() {
		return "introHotel/awardHotel";
	}
	// 호텔소개
	@RequestMapping(value="inform.do")
	public String inform() {
		return "introHotel/informHotel";
	}
	// 회원가입
	@RequestMapping(value="joinform.do")
	public String joinform() {
		return "member/joinform";
	}
	// 로그인
	@RequestMapping(value="loginform.do")
	public String loginform() {
		return "member/loginform";
	}
	// ID찾기
	@RequestMapping(value="id_find.do")
	public String id_find() {
		return "member/id_findform";
	}
	
	
	@RequestMapping(value="index.do")
	public String index() {
		return "index";
	}
	// PW찾기
	@RequestMapping(value="pw_find.do")
	public String pw_find() {
		return "member/pw_findform";
	}
	
	//mypage
	@RequestMapping(value="mypage.do")
	public String mypage() {
		return "mypage/myinform";
	}
	//pwchange
	@RequestMapping(value="pwchangeform.do")
	public String pwchange() {
		return "member/pwchangeform";
	}
	
	// 예약페이지
	@RequestMapping(value="res.do")
	public String rstep1() {
		return "reserve/reserveStep1";
	}
	// 회원탈퇴폼
	@RequestMapping(value="deleteform.do")
	public String delete() {
		return "mypage/deleteform";
	}
	
}
