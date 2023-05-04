package control.project.mapper;

import java.util.ArrayList;
import control.project.model.dept_informationVO;

public interface managercheckMapper {
	
		// 선택한 진료과 의료진 데이터 불러오기
		public ArrayList<dept_informationVO>doctor(dept_informationVO medicalDept);
/*		public ArrayList<dept_informationVO>doctor(dept_informationVO dept_information);*/

		
		
}