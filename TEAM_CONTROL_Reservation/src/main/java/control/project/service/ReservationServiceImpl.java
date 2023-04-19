package control.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.ReservationMapper;
import control.project.model.ReservationVO;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	ReservationMapper rm;

	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data) {
		rm.reserve(data);
	}
	
	// 예약 정보 불러오기 select
	
	
}
