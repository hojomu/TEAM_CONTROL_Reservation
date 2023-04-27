package control.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import control.project.model.AdminLoginVO;
import control.project.model.CriteriaVO;
import control.project.model.PageVO;
import control.project.model.ReservationVO;
import control.project.model.SettedYearMonthVO;
import control.project.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	ReservationService rs;
	
	//reservation 으로 이동
	@RequestMapping(value="/reservation", method = RequestMethod.GET)
	public String goreservation() {
		return "reservation";
	}
	
	// 이메일, 이름, 주민등록번호 appointment1 페이지로 넘기기 ( post 방식 )
	@RequestMapping(value = "/appointment1", method = RequestMethod.POST) 
	public String agree(ReservationVO data, Model model) {
		System.out.println(data);
		model.addAttribute("reserveData",data);
		return "appointment1"; // 상세 예약 페이지로 이동할 것
	}
		
	// 예약 정보 저장하기 insert
	@RequestMapping(value = "/UserCheck", method = RequestMethod.POST) 
	public String reserve(Model model, ReservationVO data) {
		rs.reserve(data);
		System.out.println(data);
		
		// 유저 정보 불러오기
		model.addAttribute("reserveData",rs.userCheck(data));
		return "UserCheck"; // 예약 확인 페이지로 이동할 것
	}
	
	// 예약 불가능 시간 불러오기 0426
	@RequestMapping(value="/appointment1/{settedYearMonth}/{medicalDept}/{doctor}", method = RequestMethod.GET)
	public ResponseEntity<SettedYearMonthVO> getDate(@PathVariable("settedYearMonth") String settedYearMonth, @PathVariable("medicalDept") String medicalDept, @PathVariable("doctor") String doctor ){
		System.out.println("controller:"+settedYearMonth);
		return new ResponseEntity<>(rs.getDate(settedYearMonth,medicalDept,doctor),HttpStatus.OK);
	}
		
	// 예약정보 불러오기 Select ( 로그인 기능 추가됨 )
	@RequestMapping(value="/ManagerCheck", method = RequestMethod.POST)
	public String getList(Model model, CriteriaVO cri , AdminLoginVO login , HttpSession session) {
		if(rs.login(login)==null) {
			model.addAttribute("failMessage","로그인에 실패했습니다.");
			return "adminLogin";
		} else {
			// 예약 정보 리스트 불러오기
			System.out.println(cri);
			model.addAttribute("list", rs.list(cri));		
			// 페이지 총 수 불러오기
			int total = rs.total(cri);
			System.out.println(total);
			// 페이지네이션 데이터 불러오기
			model.addAttribute("paging", new PageVO(cri, total));
			
			// 세션에 로그인 정보 저장하기
			session.setAttribute("login", rs.login(login));
			System.out.println(session.getAttribute("login"));
			
			return "ManagerCheck";			
		}
	}
	
	// 예약 상세정보 출력하기 (ManagerCheckDetail으로 이동하기) 0424
	@RequestMapping(value="/AManagerCheckDetail", method = RequestMethod.GET)
	public String goManagerCheckDetail(ReservationVO board, Model model) {
		//	System.out.println(board);
		model.addAttribute("detail", rs.detail(board));
		//	System.out.println(board);
		return "ManagerCheckDetail";
	}
	
	// 예약 상세정보 수정하기  0424
	@RequestMapping(value="/ManagerModify", method = RequestMethod.GET)
	public String modify(ReservationVO board, RedirectAttributes rttr) {
	//	System.out.println(board);
		rs.modify(board);
		System.out.println(board);
		rttr.addAttribute("rno", board.getRno());
		// 수정하고 난 뒤 확인을 위해 상세페이지로 화면이동
		return "redirect:/AManagerCheckDetail";
	}
	
	// 예약 상세정보 삭제하기  0424
	@RequestMapping(value="/ManagerDelete", method = RequestMethod.GET)
	public String remove(ReservationVO board) {
	//	System.out.println(board);
		rs.remove(board);
		System.out.println(board);	
		return "redirect:/AManagerCheck";
	}
	
	// 비회원 진료 예약 조회 페이지로 이동 0426
	@RequestMapping(value="/userSelfCheck", method = RequestMethod.POST)
	public String gouserSelfCheck(Model model, ReservationVO data) {
		model.addAttribute("reserveData",data);
		return "userSelfCheck";
	}
		
	// 비회원 진료 예약 조회 0426
	@RequestMapping(value="/selfcheck/{personalNumber}", method = RequestMethod.GET)
	public ResponseEntity <SettedYearMonthVO> selfCheckList(@PathVariable("personalNumber") String personalNumber){
		return new ResponseEntity<>(rs.selfCheckList(personalNumber),HttpStatus.OK);
	}
	
	// 비회원 진료 예약 조회 페이지에서 예약 정보 삭제 0426
	@RequestMapping(value="/userinfo/delete", method = RequestMethod.DELETE)
	public ResponseEntity<String> removeReservation(@RequestBody ReservationVO reservation){
		System.out.println(reservation);
		int result=rs.removeReservation(reservation);
		return result == 1? new ResponseEntity<>("success",HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 관리자 로그인 화면으로 이동 0426
	@RequestMapping(value="/adminLogin", method = RequestMethod.GET)
	public String goAdminLogin() {
		return "adminLogin";
	}
	
}
