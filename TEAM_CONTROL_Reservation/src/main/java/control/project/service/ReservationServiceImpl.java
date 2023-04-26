package control.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.ReservationMapper;
import control.project.model.CriteriaVO;
import control.project.model.ReservationVO;
import control.project.model.SettedYearMonthVO;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	ReservationMapper rm;

	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data) {
		rm.reserve(data);
	}	

	// 예약 불가능 시간 불러오기
	public SettedYearMonthVO getDate(String settedYearMonth) {
		System.out.println(settedYearMonth);
		return new SettedYearMonthVO(rm.getDate(settedYearMonth));
	}
	
	// 예약 정보 불러오기 select 0419
	public ArrayList<ReservationVO> list(CriteriaVO cri){
		return rm.list(cri);
	}
	
	// reservation 테이블(예약) 전체 건수 불러오기  0419
	public int total(CriteriaVO cri) {
		return rm.total(cri);
	}
	
	// 예약 상세정보 불러오기 0424
	public ReservationVO detail(ReservationVO board) {
		return rm.detail(board);
	}
	
	// 예약 상세정보 수정하기 0424
	public void modify(ReservationVO board) {
		rm.modify(board);
	}
	
	// 예약 상세정보 삭제하기 0424
	public void remove(ReservationVO board) {
		rm.remove(board);
	}
}
