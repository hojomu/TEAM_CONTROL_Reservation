/**
 * 
 */

$(document).ready(function(){	// jquery 준비...
	
	// 예약 상세정보 수정 버튼을 클릭하면 
	$(function(){
		$('#modifyOk').click(function() {
			if(!confirm('수정 하시겠습니까?')) {
			    return false;
		    }
	    });
	});
	// 예약 상세정보 삭제 버튼을 클릭하면 
	$(function(){
		$('#delOk').click(function() {
			if(!confirm('삭제 하시겠습니까?')) {
		    	return false;
		    }
	    });
	});
})