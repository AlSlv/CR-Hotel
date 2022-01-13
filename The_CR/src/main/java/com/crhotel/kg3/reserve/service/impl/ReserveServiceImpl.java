package com.crhotel.kg3.reserve.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crhotel.kg3.reserve.service.ReserveService;
import com.crhotel.kg3.reserve.service.dao.ReserveDAO;
import com.crhotel.kg3.reserve.vo.ReserveVO;


@Service("reserveService")
public class ReserveServiceImpl implements ReserveService {
	@Autowired
	private ReserveDAO dao;
	
	@Override
	@Transactional
	public ArrayList<ReserveVO> allRs(ReserveVO reserveVO){
		return dao.allRs(reserveVO);
	}
	public void insertRs(ReserveVO reserveVO) {
		dao.insertRs(reserveVO);
	}
	public ArrayList<ReserveVO> ownerRes(ReserveVO reserveVO) {
		return dao.ownerRes(reserveVO);
	}
	public void ownerResDelete(String ajaxMsg) {
		dao.ownerResDelete(ajaxMsg);
		
	}
	public ArrayList<ReserveVO> ownerSearch(HashMap<String, String> hMap) {
		return dao.ownerSearch(hMap);
	}
	public ArrayList<ReserveVO> ownersonck(ReserveVO reserveVO) {
		return dao.ownersonck(reserveVO);
	}
	public ArrayList<ReserveVO> myres(ReserveVO reserveVO) {
		return dao.myres(reserveVO);
	}
	public void resCancle(ReserveVO reserveVO) {
		// TODO Auto-generated method stub
		dao.resCancle(reserveVO);
	}

}