package control.project.service;

import control.project.model.ReservationVO;

public interface ReservationService {
	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data);
	
	// 예약 정보 불러오기 select
}
