let spanOption = document.querySelectorAll(".change span");

spanOption.forEach(function (span) {
    span.addEventListener("click", function (e) {
        
        //Remove class active
        e.target.parentElement.querySelectorAll(".active").forEach(function (element) {
            element.classList.remove("active");
        });
        //Add class active
        e.target.classList.add("active");
      
       if (e.target.classList.contains("user")) {
         
        document.querySelectorAll(".client-change form").forEach(function (element) {
            element.classList.remove("active");
        });
         
        document.querySelector(".user-form").classList.add("active");
        
       } else {
         
        document.querySelectorAll(".client-change form").forEach(function (element) {
            element.classList.remove("active");
        });
         
        document.querySelector(".manager-form").classList.add("active");
       }
    })
})


// 주민등록번호 onblur로 합치기
let personalNo1 = document.getElementById("personalNo1");
let personalNo2 = document.getElementById("personalNo2");
let personalNumber = document.getElementById("personalNumber");

personalNo2.addEventListener("blur",function(){
	let personalNumberValue = personalNo1.value + "-" + personalNo2.value;
	personalNumber.value = personalNumberValue;
	console.log(personalNumber.value);
})








