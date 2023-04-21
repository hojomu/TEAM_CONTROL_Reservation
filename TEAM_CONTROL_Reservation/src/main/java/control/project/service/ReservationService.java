package control.project.service;

import java.util.ArrayList;

import control.project.model.CriteriaVO;
import control.project.model.ReservationVO;
import control.project.model.settedYearMonthVO;

public interface ReservationService {
	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data);
	
	// 예약 정보 불러오기 select 0419
	public ArrayList<ReservationVO> list(CriteriaVO cri);
	
	// reservation 테이블(예약) 전체 건수 설계  0419
	public int total(CriteriaVO cri);

	// 예약 불가능 시간 불러오기
	public settedYearMonthVO getDate(String settedYearMonth);
}
