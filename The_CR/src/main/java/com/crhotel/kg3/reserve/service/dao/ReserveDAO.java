package com.crhotel.kg3.reserve.service.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.crhotel.kg3.reserve.vo.ReserveVO;



public interface ReserveDAO { 
	ArrayList<ReserveVO> allRs(ReserveVO reserveVO);
	void insertRs(ReserveVO reserveVO);
	ArrayList<ReserveVO> ownerRes(ReserveVO reserveVO);
	void ownerResDelete(String ajaxMsg);
	ArrayList<ReserveVO> ownerSearch(HashMap<String, String> hMap);
	ArrayList<ReserveVO> ownersonck(ReserveVO reserveVO);
	ArrayList<ReserveVO> myres(ReserveVO reserveVO);
	void resCancle(ReserveVO reserveVO);

	
}
