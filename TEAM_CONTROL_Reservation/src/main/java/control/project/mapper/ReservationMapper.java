package control.project.mapper;

import java.util.ArrayList;

import control.project.model.CriteriaVO;
import control.project.model.ReservationVO;

public interface ReservationMapper {
		// 예약 정보 저장하기 insert
		public void reserve(ReservationVO data);
		
	    // 예약 정보 불러오기 select 0419
		public ArrayList<ReservationVO> list(CriteriaVO cri);
		
		// reservation 테이블(예약) 전체 건수 DB 설계 0419
		public int total(CriteriaVO cri);
		
		
}
