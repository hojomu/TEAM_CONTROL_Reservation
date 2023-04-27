/**
 * 
 */

// 주민등록번호 합치기
	// 주민등록번호 input 가져오기
	const personalNum1 = document.getElementById("personal_num1");
	const personalNum2 = document.getElementById("personal_num2");
	const personalNumber = document.getElementById("personalNumber");
	
	// 이벤트 부여하기
	personalNum1.addEventListener("blur",sumPersonalNumber);
	personalNum2.addEventListener("blur",sumPersonalNumber);
	
	// 주민등록번호 합치기 함수
	function sumPersonalNumber(){
		personalNumber.value = personalNum1.value + "-" + personalNum2.value;
	}


// 유효성 검사
	// 유효성 검사 완료 확인
	var chk_agree1 = false;
	var chk_agree2 = false;
	var chk_email = false;
	var chk_name = false;
	var chk_