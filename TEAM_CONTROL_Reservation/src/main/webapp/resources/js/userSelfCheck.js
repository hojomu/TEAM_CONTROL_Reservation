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
			str+="<li class='information-item'>"
			str+="<div class='info-card-body'>"
			str+="<div class='info-time-card'><div class='info-time-area'><span>"+data.list[i].reservationTime+"</span></div></div>"
			str+="<div class='info-detail-card'><div class='info-detail'>"
			str+="<span>"+data.list[i].medicalDept+"</span>"
			str+="<span>"+data.list[i].doctor+"</span>"
			str+="<span>특이사항 : "+data.list[i].otherInfo+"</span>"
			str+="</div>"
			str+="<div class='removeBtnWrap'><a href='#' class='removeReservation button button_left btnFloat btnLightBlue' title='Button border lightblue' data-rno="+data.list[i].rno+">예약취소</a></div>"
			str+="</div>"
			str+="</li>"
		
		}
		
		$("#infomation-wrap").html(str);
		
	})
	
}