package control.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.project.model.ReservationVO;
import control.project.model.SettedYearMonthVO;
import control.project.service.InquiryService;

@Controller
public class InquiryController {
	
		@Autowired
		InquiryService is;	
		
		// 주민등록번호로 예약 정보가 있는지 확인
		@RequestMapping(value="/inquiryCheck", method = RequestMethod.POST)
		public ResponseEntity<SettedYearMonthVO> inquiryCheck(@RequestBody ReservationVO personalNumber ){
			System.out.println(personalNumber);
			return new ResponseEntity<>(is.inquiryCheck(personalNumber),HttpStatus.OK);
		}
		
		// 비회원 진료 예약 조회 페이지로 이동 0426 -  주민등록번호 확인 기능 추가 할 것
		@RequestMapping(value="/userSelfCheck", method = RequestMethod.POST)
		public String gouserSelfCheck(Model model, ReservationVO data) {
			model.addAttribute("reserveData",data);
			return "userSelfCheck";
		}
			
		// 비회원 진료 예약 조회 0426
		@RequestMapping(value="/selfcheck/{personalNumber}", method = RequestMethod.GET)
		public ResponseEntity <SettedYearMonthVO> selfCheckList(@PathVariable("personalNumber") String personalNumber){
			System.out.println(personalNumber);
			ReservationVO data = new ReservationVO();
			data.setPersonalNumber(personalNumber);
			System.out.println(data);
			return new ResponseEntity<>(is.selfCheckList(data),HttpStatus.OK);
		}
		
		// 비회원 진료 예약 조회 페이지에서 예약 정보 삭제 0426
		@RequestMapping(value="/userinfo/delete", method = RequestMethod.DELETE)
		public ResponseEntity<String> removeReservation(@RequestBody ReservationVO reservation){
			System.out.println(reservation);
			int result=is.removeReservation(reservation);
			return result == 1? new ResponseEntity<>("success",HttpStatus.OK)
					: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		// usercheck에서 예약 취소하기 0502
		@RequestMapping(value="/delete", method = RequestMethod.POST)
		public String delete (ReservationVO data) {
			System.out.println("데이터 삭제"+data);
			is.delete(data);
			return "home";
		}
}
