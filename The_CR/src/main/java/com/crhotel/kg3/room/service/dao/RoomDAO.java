package com.crhotel.kg3.room.service.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.crhotel.kg3.room.vo.RoomVO;



public interface RoomDAO { 
	ArrayList<RoomVO> roomList(RoomVO roomvo);
	void roomDelete(RoomVO roomvo);
	RoomVO getRoomInfo(RoomVO roomvo);
	void roomUpdate(RoomVO roomvo);
	void roomInsert(RoomVO roomvo);
}
