package com.crhotel.kg3.inquery.service.dao;

import java.util.ArrayList;

import com.crhotel.kg3.inquery.vo.AnswerVO;
import com.crhotel.kg3.inquery.vo.Criteria;
import com.crhotel.kg3.inquery.vo.QuestionVO;

public interface QuestionDAO {
	ArrayList <QuestionVO> getAllBoard(Criteria cri);
	ArrayList<QuestionVO> getSearchT(String keyword);
	ArrayList<QuestionVO> getSearchC(String keyword);
	ArrayList<QuestionVO> getSearchW(String keyword);
	ArrayList<QuestionVO> getSearchTC(String keyword);
	void insertQuestion(QuestionVO questionVO);
	void insertAnswer(AnswerVO answerVO);
	QuestionVO getOneQuestion(QuestionVO questionVO);
	AnswerVO getOneAnswer(AnswerVO answerVO);
	void updateQuestion(QuestionVO questionVO);
	void updateAnswer(AnswerVO answerVO);
	void increaseClick(QuestionVO questionVO);
	void deleteBoard(QuestionVO questionVO);
	void deleteABoard(AnswerVO answerVO);
	Integer getLastNum(QuestionVO questionVO);
	Integer getAllCount(QuestionVO questionVO);
	Integer getAllCountA(AnswerVO answerVO);
	Integer getAnswerTime();
}
