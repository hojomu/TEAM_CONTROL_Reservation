package control.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.managercheckMapper;
import control.project.model.dept_informationVO;

@Service
public class managercheckServiceImpl implements managercheckService {
	
	@Autowired
	managercheckMapper ma;
	
	public ArrayList<dept_informationVO> doctor(dept_informationVO medicalDept) {
		return ma.doctor(medicalDept);
	}

	
}
