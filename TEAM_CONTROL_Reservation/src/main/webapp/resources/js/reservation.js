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


	
// 확인버튼을 누르면 유효성 검사
	const appointmentForm = document.getElementById("appointmentForm");
	
	// 유효성 검사 체크
	var chk_termsAgree1 = false;
	var chk_termsAgree2 = false;
	var chk_email = false;
	var chk_name = false;
	var chk_personalNumber = false;
	
	// 확인 버튼에 이벤트 부여
	const submitBtn = document.getElementById("submit");
	submitBtn.addEventListener("submit",validationCheck); // 
	
	
	// 유효성 검사 함수
	function validationCheck(event){
		event.preventDefault();
		
		// 이메일
		const settedEmail = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		const email = document.getElementById("email").value;
		if( email.match(settedEmail) ){
			// 유효성 검사에 성공했을 때
			chk_email = true;
		}else{
			// 유효성 검사에 실패했을 때
			chk_email = false;
		}
		
		// 이름
		const settedName = /^[ㄱ-힣]+[ㄱ-힣]{1,20}$/g;
		const name = document.getElementById("customerName").value;
		if( name.match(settedName) ){
			// 유효성 검사에 성공했을 때
			chk_name = true;
		}else{
			// 유효성 검사에 실패했을 때
			chk_name = false;
		}
		
		// 주민등록번호 -> 주민등록번호의 유효성을 검사하는 방법이 따로 있다. 지금은 임시방편
		const settedPersonalNumber = /^[0-9]{6}-[0-9]{7}$/g;
		if( personalNumber.value.match(settedPersonalNumber) ){
			// 유효성 검사에 성공했을 때
			chk_personalNumber = true;
		}else{
			// 유효성 검사에 실패했을 때
			chk_personalNumber = false;
		}
		
		// agree
		const termsAgree1 = document.getElementsByName('terms-agree1');
		const termsAgree2 = document.getElementsByName('terms-agree2');
		let selectedOption1;
		let selectedOption2;
		
		for(let i = 0; i < termsAgree1.length; i++){
			if (termsAgree1[i].checked){
				selectedOption1 = termsAgree1[i].value;
				break;
			}
		}
		
		for(let i = 0; i < termsAgree2.length; i++){
			if (termsAgree2[i].checked){
				selectedOption2 = termsAgree2[i].value;
				break;
			}
		}
		
		if (selectedOption1 === 'agree'){
			// 유효성 검사에 성공했을 때
			chk_termsAgree1 = true;
		}else{
			// 유효성 검사에 실패했을 때
			chk_termsAgree1 = false;
		}
		
		if (selectedOption2 === 'agree'){
			// 유효성 검사에 성공했을 때
			chk_termsAgree2 = true;
		}else{
			// 유효성 검사에 실패했을 때
			chk_termsAgree2 = false;
		}
		
		console.log(chk_termsAgree1);
		console.log(chk_termsAgree2);
		console.log(chk_email);
		console.log(chk_name);
		console.log(chk_personalNumber);
		// 전체
		if( chk_termsAgree1==true && chk_termsAgree2==true && chk_email==true && chk_name==true && chk_personalNumber==true){
			console.log(appointmentForm);
			appointmentForm.submit();
			
		} else{
			alert("정확한 정보를 입력하세요.");
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	