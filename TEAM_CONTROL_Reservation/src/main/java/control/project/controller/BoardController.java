package control.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import control.project.model.AdminLoginVO;
import control.project.model.CriteriaVO;
import control.project.model.PageVO;
import control.project.model.ReservationVO;
import control.project.service.BoardService;

@Controller
public class BoardController {
	
		@Autowired
		BoardService bs;
	
		// 예약정보 불러오기 Select ( 로그인 할 때 )
		@RequestMapping(value="/ManagerCheck", method = RequestMethod.POST)
		public String getList(Model model, CriteriaVO cri , AdminLoginVO login , HttpSession session, HttpServletRequest request) {
			// 로그인이 되어있지 않다면
			if(session.getAttribute("login") == null) {
				return "Security";
				
			} else {	// 로그인이 되어있다면
				// 예약 정보 리스트 불러오기
				model.addAttribute("list", bs.recentList(cri));		
				// 페이지 총 수 불러오기
				int total = bs.total(cri);
				request.setAttribute("total1", total);
				// 페이지네이션 데이터 불러오기
				model.addAttribute("paging", new PageVO(cri, total));
				
				return "ManagerCheck";		
			}
		}
		
		// 예약정보 불러오기 Select 검색 기능을 이용할 때
		@RequestMapping(value="/ManagerCheck", method = RequestMethod.GET)
		public String listSet(Model model, CriteriaVO cri, HttpServletRequest request, HttpSession session) {
			// 로그인이 되어있지 않다면
			if(session.getAttribute("login") == null) {
				return "Security";
						
			} else {	// 로그인이 되어있다면
					// 예약 정보 리스트 불러오기
			System.out.println(cri);
			model.addAttribute("list", bs.list(cri));		
			// 페이지 총 수 불러오기
			int total = bs.total(cri);
			System.out.println(cri);
			request.setAttribute("total1", total);
			System.out.println(total);
			// 페이지네이션 데이터 불러오기
			model.addAttribute("paging", new PageVO(cri, total));
			return "ManagerCheck";
			}
		}
		
		// 예약 상세정보 출력하기 (ManagerCheckDetail으로 이동하기) 0424
		@RequestMapping(value="/ManagerCheckDetail", method = RequestMethod.GET)
		public String goManagerCheckDetail(ReservationVO board, Model model, CriteriaVO cri) {
			//	System.out.println(board);
			model.addAttribute("detail", bs.detail(board));
			model.addAttribute("cri", cri);	
			//	System.out.println(board);
			return "ManagerCheckDetail";
		}
		
		// 예약 상세정보 수정하기  0424
		@RequestMapping(value="/ManagerModify", method = RequestMethod.GET)
		public String modify(ReservationVO board, RedirectAttributes rttr, CriteriaVO cri) {
		//	System.out.println(board);
			bs.modify(board);
			System.out.println(board);
			rttr.addAttribute("rno", board.getRno());
			rttr.addAttribute("dept1", cri.getDept1());
			rttr.addAttribute("doctor1", cri.getDoctor1());
			rttr.addAttribute("date1", cri.getDate1());
			rttr.addAttribute("date2", cri.getDate2());
			// 수정하고 난 뒤 확인을 위해 상세페이지로 화면이동
			return "redirect:/ManagerCheckDetail";
		}
		
		// 예약 상세정보 삭제하기  0424
		@RequestMapping(value="/ManagerDelete", method = RequestMethod.GET)
		public String remove(ReservationVO board, RedirectAttributes rttr, CriteriaVO cri) {
		//	System.out.println(board);
			bs.remove(board);
			System.out.println(board);	
			rttr.addAttribute("dept1", cri.getDept1());
			rttr.addAttribute("doctor1", cri.getDoctor1());
			rttr.addAttribute("date1", cri.getDate1());
			rttr.addAttribute("date2", cri.getDate2());	
			System.out.println(board);
			System.out.println(cri);
			return "redirect:/ManagerCheck";
		}
		
		
}
