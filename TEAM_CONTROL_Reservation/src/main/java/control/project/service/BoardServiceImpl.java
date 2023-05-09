package control.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.BoardMapper;
import control.project.model.CriteriaVO;
import control.project.model.ReservationVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardMapper bm;
	
		// 현재 시간 기준 예약정보 불러오기 0509
		public ArrayList<ReservationVO> recentList(CriteriaVO cri){
			System.out.println("여길보세요");
			return bm.recentList(cri);
		}
	
		// 예약 정보 불러오기 select 0419
		public ArrayList<ReservationVO> list(CriteriaVO cri){
			System.out.println(cri);
			return bm.list(cri);
		}

		// reservation 테이블(예약) 전체 건수 불러오기  0419
		public int total(CriteriaVO cri) {
			return bm.total(cri);
		}

		// 예약 상세정보 불러오기 0424
		public ReservationVO detail(ReservationVO board) {
			return bm.detail(board);
		}
		
		// 예약 상세정보 수정하기 0424
		public void modify(ReservationVO board) {
			bm.modify(board);
		}
		
		// 예약 상세정보 삭제하기 0424
		public void remove(ReservationVO board) {
			bm.remove(board);
		}
}
