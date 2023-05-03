/**
 * 
 */

// 로그인 버튼 가져오기
const adminLoginBtn = document.getElementById("adminLoginBtn");

// 이벤트 부여하기
adminLoginBtn.addEventListener("click",function(event){
	event.preventDefault();
	
	adminLoginCheck();
})

function adminLoginCheck(){
	const adminId = document.getElementById("adminId").value;
	const adminPass = document.getElementById("adminPass").value;
	const loginFailMessageBox = document.getElementById("loginFailMessage");

	// 로그인 체크 db연결
    $.ajax({
        url: '/adminLogin',
        type: 'POST',
        contentType: 'application/json;charset=UTF-8',
        data: JSON.stringify({
            adminId: adminId,
            adminPass: adminPass
        }),
        success: function(responseData) {
            console.log('요청이 성공했습니다.');
            console.log(responseData); // XML tags Json으로 사용하려면 변형해야함.
            
            if(responseData == ""){
            	console.log("로그인 실패")
            	loginFailMessageBox.innerText = "아이디 또는 비밀번호를 확인해주세요";
            } else {
            	$("#manager-form").submit();
            }
        },
        error: function() {
            console.log('요청이 실패했습니다.');
        }
    });
	
	
}



