package com.crhotel.kg3.room.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crhotel.kg3.room.service.RoomService;
import com.crhotel.kg3.room.service.dao.RoomDAO;
import com.crhotel.kg3.room.vo.RoomVO;



@Service("roomService")
public class RoomServiceImpl implements RoomService {
	@Autowired
	private RoomDAO dao;

	@Override
	@Transactional
	public ArrayList<RoomVO> roomList(RoomVO roomvo) {
		return dao.roomList(roomvo);
	}
	public RoomVO getRoomInfo(RoomVO roomvo) {
		return dao.getRoomInfo(roomvo);
	}
	public void roomUpdate(RoomVO roomvo) {
		dao.roomUpdate(roomvo);
	}
	public void roomDelete(RoomVO roomvo) {
		dao.roomDelete(roomvo);
	}
	public void roomInsert(RoomVO roomvo) {
		dao.roomInsert(roomvo);		
	}
}