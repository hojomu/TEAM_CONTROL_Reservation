
//이메일 주소 하나로 합치기
function sum_email(){
	 first_email=document.form.first_email.value; 
	/* second_email=document.form.second_email.value;*/
	
	var second_email = document.getElementById("second_email");
	var value=(second_email.options[second_email.selectedIndex].value);

	email=first_email+second_email.options[second_email.selectedIndex].value; 

 	alert(email); 
}
	
//주민등록번호 주소 하나로 합치기
function sum_personalnum(){
	personal_num1 = document.form.personal_num1.value;
	personal_num2 = document.form.personal_num2.value;
	
	personalNumber= personal_num1 + "-" + personal_num2;
	alert(personalNumber);
}
