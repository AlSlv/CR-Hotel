package com.crhotel.kg3.room.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.crhotel.kg3.reserve.vo.ReserveVO;
import com.crhotel.kg3.room.vo.RoomVO;


public interface RoomService {

	ArrayList<RoomVO> roomList(RoomVO roomvo);
	void roomDelete(RoomVO roomvo);
	RoomVO getRoomInfo(RoomVO roomvo);
	void roomUpdate(RoomVO roomvo);
	void roomInsert(RoomVO roomvo);
}

