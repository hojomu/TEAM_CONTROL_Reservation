package control.project.mapper;

import java.util.ArrayList;

import control.project.model.ReservationVO;

public interface InquiryMapper {
	
		// 비회원 진료 예약 조회
		public ArrayList<ReservationVO> selfCheckList(ReservationVO data);
		
		// 비회원 진료 예약 조회 페이지에서 예약 정보 삭제
		public int removeReservation(ReservationVO reservation);

		// 유저 정보 삭제
		public void delete(ReservationVO data);
		
}
