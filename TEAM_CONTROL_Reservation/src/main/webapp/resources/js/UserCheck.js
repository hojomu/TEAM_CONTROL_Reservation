/**
 * 
 */


function chk_form() {
    if (confirm("예약을 취소하시겠습니까?")) {
        var form = document.getElementById('frm');
        form.addEventListener('submit', function(event) {
            alert("예약이 취소되었습니다.");
            opener.parent.location.reload();
            window.close();
        });
        form.addEventListener('error', function(event) {
            event.preventDefault();
            alert("폼 요소 전송 중 에러가 발생했습니다.");
        });
        form.submit();
    }
}
function reservationEnd(){
	alert("예약이 완료되었습니다.");
    opener.parent.location.reload();
    window.close();
}