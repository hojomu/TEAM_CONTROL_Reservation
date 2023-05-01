package control.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.project.mapper.dept_informationMapper;
import control.project.model.dept_informationVO;

@Service
public class dept_informationServiceImpl implements dept_informationService {
	
	@Autowired
	dept_informationMapper di;
	
	public ArrayList<dept_informationVO> list(dept_informationVO mvo) {
		return di.list(mvo);
	}

	
}
