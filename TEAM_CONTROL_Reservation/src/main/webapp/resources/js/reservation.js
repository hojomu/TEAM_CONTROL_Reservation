var personal_num1 = document.getElementById("personal_num1");
var personal_num2 = document.getElementById("personal_num2");

//이메일 주소 하나로 합치기
function sum_email(){
	
	var email = document.getElementById("email");
	
	var first_email = document.getElementById("first_email");

	var second_email = document.getElementById("second_email");
	var second_email_value = (second_email.options[second_email.selectedIndex].value);

	email.value = first_email.value+"@"+second_email_value; 

}
	
//주민등록번호 주소 하나로 합치기
function sum_personalnum(){
	
	var personalNumber = document.getElementById("personalNumber");
	
	var personal_num1 = document.getElementById("personal_num1");
	var personal_num2 = document.getElementById("personal_num2");
	
	personalNumber.value = personal_num1.value + "-" + personal_num2.value;
}
