  $(function() { 
 	
 	var email_auth_cd = '';
 	
 	// 인증번호 일치 유효성 검사
	$('#join').click(function(){
		if($('#email_auth_key').val().trim() === ""){
			alert("이메일 인증을 해주세요.");
		}else{
			if($('#email_auth_key').val() != email_auth_cd){
				alert("인증번호가 일치하지 않습니다.");
				return false; // e.preventDefault() 와 같은 역할을 한다.
			}else{
				alert("인증번호 일치");
				// 이메일 인증이 끝나면, 
				var email = $('#first_email').val() + "@" + $('#second_email').val();
				$("input[name='email']").val(email); // jquery의 value 넣는 방법
				console.log(email);
			}
			fn_join();
		}
	});
	
	// 이메일 보내기
	$(".email_auth_btn").click(function(){
		//이메일 주소 하나로 합치기
		var email = $('#first_email').val() + "@" + $('#second_email').val();
    	 
    	 if(email == ''){
    	 	alert("이메일을 입력해주세요.");
    	 	return false;
    	 }
    	 
    	 $.ajax({
			type : "POST",
			url : "/reservation",
			data : {email : email},
			success: function(data){
				alert("인증번호가 발송되었습니다.");
				console.log(data);
				email_auth_cd = data;
			},
			error: function(data){
				alert("메일 발송에 실패했습니다.");
			}
		});
    	 
	});
	
 });