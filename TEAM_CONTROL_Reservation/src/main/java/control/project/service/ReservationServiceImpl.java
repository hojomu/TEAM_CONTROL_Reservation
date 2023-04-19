package control.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.ReservationMapper;
import control.project.model.CriteriaVO;
import control.project.model.ReservationVO;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	ReservationMapper rm;

	// 예약 정보 저장하기 insert
	public void reserve(ReservationVO data) {
		rm.reserve(data);
	}
	
	// 예약 정보 불러오기 select 0419
	public ArrayList<ReservationVO> list(CriteriaVO cri){
		return rm.list(cri);
	}
	
	// reservation 테이블(예약) 전체 건수 불러오기  0419
	public int total(CriteriaVO cri) {
		return rm.total(cri);
	}
	
	
}
