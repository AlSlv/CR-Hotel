package com.crhotel.kg3.inquery.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crhotel.kg3.inquery.service.CrhotelService;
import com.crhotel.kg3.inquery.service.dao.QuestionDAO;
import com.crhotel.kg3.inquery.vo.AnswerVO;
import com.crhotel.kg3.inquery.vo.Criteria;
import com.crhotel.kg3.inquery.vo.QuestionVO;


@Service("crhotelService")
public class CrhotelServiceImpl implements CrhotelService {

	@Autowired
	private QuestionDAO crhotel;
	
	@Override
	@Transactional
	public ArrayList <QuestionVO> getAllBoard(Criteria cri) {
		return crhotel.getAllBoard(cri);
	}
	
	public ArrayList<QuestionVO> searchBoard(String type, String keyword, Criteria cri) {
		if (type.equals("T"))
			return crhotel.getSearchT(keyword);
		else if (type.equals("C")) 
			return crhotel.getSearchC(keyword);
		else if (type.equals("W"))
			return crhotel.getSearchW(keyword);
		else if (type.equals("TC"))
			return crhotel.getSearchTC(keyword);
		else
			return crhotel.getAllBoard(cri);
	}
	
	public void insertQuestion(QuestionVO questionVO) {
		crhotel.insertQuestion(questionVO);
	}
	
	public void insertAnswer(AnswerVO answerVO) {
		crhotel.insertAnswer(answerVO);
	}
	
	public QuestionVO getOneQuestion(QuestionVO questionVO) {
		crhotel.increaseClick(questionVO);
		return crhotel.getOneQuestion(questionVO);
	}
	
	public AnswerVO getOneAnswer(AnswerVO answerVO) {
		return crhotel.getOneAnswer(answerVO);
	}
	
	public void updateQuestion(QuestionVO questionVO) {
		crhotel.updateQuestion(questionVO);
	}

	public void updateAnswer(AnswerVO answerVO) {
		crhotel.updateAnswer(answerVO);
	}
	
	public void deleteBoard(QuestionVO questionVO) {
		crhotel.deleteBoard(questionVO);
	}
	
	public void deleteABoard(AnswerVO answerVO) {
		crhotel.deleteABoard(answerVO);
	}
	
	public Integer getLastNum(QuestionVO questionVO) {
		Integer num = crhotel.getLastNum(questionVO);
		if (num != null) {
			return num + 1;
		}
		return 1;
	}
	
	public Integer getAllCount(QuestionVO questionVO) {
		return crhotel.getAllCount(questionVO);
	}

	public Integer getAllCountA(AnswerVO answerVO) {
		return crhotel.getAllCountA(answerVO);
	}

	public Integer getAnswerTime() {
		return crhotel.getAnswerTime();
	}
}
