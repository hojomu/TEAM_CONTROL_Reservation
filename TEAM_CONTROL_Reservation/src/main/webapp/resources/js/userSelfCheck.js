/**
 * 
 */

$(document).ready(function(){
	var personalNumber = $("input[name='personalNumber']").val();
	var welcome = $("#welcome");
	list(personalNumber);
	
	
	// 예약정보 삭제 버튼 이벤트
	$("#infomation-wrap").on("click",".removeReservation",function(event){ // 같은 이름을 가진 요소들에 동시에 이벤트를 주는 방법
		const reservationRno = $(this).data("rno");
		
		const confirmed = confirm("예약을 취소 하시겠습니까?");
		
		if(confirmed){
			remove({rno:reservationRno,personalNumber:personalNumber});
		}
	})
	
})

// 예약 취소 함수
function remove(data){
	
	$.ajax({
		type:"delete",
		url:"/userinfo/delete",
		data: JSON.stringify(data), // 그냥값으로 보내려면 힘드니까 어지간하면 VO로 받자..
		contentType:"application/json; charset=utf-8",
		success:function(result){
			if(result=="success"){
				alert("예약을 취소 했습니다.");
				list(data.personalNumber);
			}
		}
		
	})
}

// list 함수
function list(param){
	console.log(param);
	var personalNumber = param;
	
	$.getJSON("/selfcheck/"+personalNumber+".json", function(data){
		console.log(data);
		
		welcome.innerText = data.list[0].customerName+"님의 예약 정보";
		
		var str = "";
		
		for(var i = 0; i < data.list.length; i++){
			str+="<div role='region' aria-label='data table' tabindex='0' class='primary'>"
			str+="<table><thead>"
			str+="<thead>"
			str+="<tr><th class='pin' colspan='2'>예약정보 확인</th></tr>"
			str+="</thead>"
			str+="<tbody>"
			str+="<tr><th>환자번호</th><td>"+data.list[i].rno+"</td></tr>"
			str+="<tr><th>환자명</th><td>"+data.list[i].customerName+"</td></tr>"
			str+="<tr><th>진료과</th><td>"+data.list[i].medicalDept+"</td></tr>"
			str+="<tr><th>의료진</th><td>"+data.list[i].doctor+"</td></tr>"
			str+="<tr><th>예약시간</th><td>"+data.list[i].reservationTime+"</td></tr>"
			str+="</tbody>"
			str+="</table>"
			str+="</div>"
			str+="<div class='container'>"
			str+="<a href='#' class='removeReservation button button_left btnFloat btnLightBlue' title='Button border lightblue' data-rno="+data.list[i].rno+">예약취소</a>"
			str+="<a href='/' title='Button border lightblue' class='button button_right btnFloat btnLightBlue'>확인</a>"
			str+="<div class='clear'></div>"
			str+="</div>"
		
		}
		
		$("#infomation-wrap").html(str);
		
	})
	
}