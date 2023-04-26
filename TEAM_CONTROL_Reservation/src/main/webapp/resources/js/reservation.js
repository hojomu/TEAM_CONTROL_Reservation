
//이메일 주소 하나로 합치기
/*function sum_email(){
	 first_email = document.form.first_email.value; 
	 second_email = document.form.second_email.value;
	 email = first_email + second_email;
	 alert(email);
	 
	
	var second_email = document.getElementById("second_email");
	var value=(second_email.options[second_email.selectedIndex].value);

	email=first_email+second_email.options[second_email.selectedIndex].value; 
 	alert(email);
}*/


	
//주민등록번호 주소 하나로 합치기
function sum_personalnum(){
	personal_num1 = document.form.personal_num1.value;
	personal_num2 = document.form.personal_num2.value;
	
	personalNumber= personal_num1 + "-" + personal_num2;
	alert(personalNumber);
}

//이메일 인증번호 받기 버튼 클릭 시 
/*function email_check(){
	
	 var value_str = document.getElementById('second_email_select');
	 
		if(value_str.options[value_str.selectedIndex].value === "0"){
			document.getElementById("email_warn").innerHTML="이메일을 선택해주세요."
			value_str.focus();
			 return false;
		}
		
	let first_email = document.getElementById("first_email").value
	 let check = true;

	  if(first_email===""){
	    document.getElementById("email_warn").innerHTML="이메일을 입력해주세요."
	    check = false
	  }else{
	    document.getElementById("email_warn").innerHTML="이메일이 전송 되었습니다. 이메일을 확인해주세요."
	  }
   
}*/







