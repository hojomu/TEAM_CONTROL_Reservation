// 모달 기능 구현
	let spanOption = document.querySelectorAll(".change span");
	
	spanOption.forEach(function (span) {
	    span.addEventListener("click", function (e) {
	        
	        //Remove class active
	        e.target.parentElement.querySelectorAll(".modal_active").forEach(function (element) {
	            element.classList.remove("modal_active");
	        });
	        //Add class active
	        e.target.classList.add("modal_active");
	      
	       if (e.target.classList.contains("user")) {
	         
	        document.querySelectorAll(".client-change form").forEach(function (element) {
	            element.classList.remove("modal_active");
	        });
	         
	        document.querySelector(".user-form").classList.add("modal_active");
	        
	       } else {
	         
	        document.querySelectorAll(".client-change form").forEach(function (element) {
	            element.classList.remove("modal_active");
	        });
	         
	        document.querySelector(".manager-form").classList.add("modal_active");
	       }
	    })
	})
	
// 팝업 기능
	const openPopupBtn = document.getElementById("openPopupBtn");
	openPopupBtn.addEventListener("click",openPopup);
	function openPopup() {
		console.log("팝업");
		var popup = window.open("modal_reservation", "popup", "width=1200, height=800");
		popup.onload = function() {
		var screenWidth = window.innerWidth;
		var screenHeight = window.innerHeight;
		var popupWidth = popup.innerWidth;
		var popupHeight = popup.innerHeight;
		var left = (screenWidth - popupWidth) / 2;
		var top = (screenHeight - popupHeight) / 2;
		popup.moveTo(left, top);
		};
	}

// 비회원 진료 예약 조회
	// input, button 가져오기
	const personalNo1 = document.getElementById("personalNo1");
	const personalNo2 = document.getElementById("personalNo2");
	const personalNumber = document.getElementById("personalNumber");
	
	const inquiryBtn = document.getElementById("inquiryBtn");
	
	// 이벤트 부여하기
	inquiryBtn.addEventListener("click",function(event){
	event.preventDefault();
	
	inquiryCheck();
	})
	
	// 주민등록번호로 예약 조회 함수
	function inquiryCheck(){
		let personalNumberValue = personalNo1.value + "-" + personalNo2.value;
		console.log(personalNumberValue);
		
		$.ajax({
			url: '/inquiryCheck',
			type: 'POST',
			contentType: 'application/json;charset=UTF-8',
			dataType: 'json',
	        data: JSON.stringify({
	        	personalNumber: personalNumberValue
	        }),
	        success: function(responseData){
	        	console.log(responseData);
	        	if(responseData.list[0] == null){
	        		alert("예약 정보가 없습니다.");
	        	} else {
	        		personalNumber.value = personalNumberValue;
	        		console.log(personalNumber.value);
	        		$("#inquiryForm").submit(); // 예약정보 확인 페이지로 이동
	        	}
	        }
		});
	}








