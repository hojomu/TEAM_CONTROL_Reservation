package control.project.service;

import java.util.ArrayList;

import control.project.model.CriteriaVO;
import control.project.model.ReservationVO;

public interface BoardService {
	// 현재 시간 기준 예약정보 불러오기 0509
	public ArrayList<ReservationVO> recentList(CriteriaVO cri);
	
	// 예약 정보 불러오기 select 0419
	public ArrayList<ReservationVO> list(CriteriaVO cri);
	
	// reservation 테이블(예약) 전체 건수 설계  0419
	public int total(CriteriaVO cri);

	// 예약 상세정보 불러오기 0424
	public ReservationVO detail(ReservationVO board);
	
	// 예약 상세정보 수정하기 0424
	public void modify(ReservationVO board);

	// 예약 상세정보 삭제하기 0424
	public void remove(ReservationVO board);
	
}
