package control.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import control.project.model.dept_informationVO;

import control.project.service.managercheckService;

@Controller
public class managerCheckController {
	
	@Autowired
	managercheckService ma;
	

	@RequestMapping(value = "/managercheck/{medicalDept}", method = RequestMethod.GET)
	public ResponseEntity<ArrayList<dept_informationVO>> getList(@PathVariable("medicalDept") String medicalDept) {
		/*System.out.println("medicalDept="+medicalDept);*/
	    dept_informationVO mvo = new dept_informationVO();
	    mvo.setMedicalDept(medicalDept);
	    System.out.println(mvo);
	    return new ResponseEntity<>(ma.doctor(mvo), HttpStatus.OK);
	}
	

}
