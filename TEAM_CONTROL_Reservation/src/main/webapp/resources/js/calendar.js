/**
 * 
 */

	// timeTable을 위한 배열 선언
	const WorkTime = ['10:00','11:00','14:00','15:00','16:30'];
	var timeTable = document.querySelector("#timeTable"); // ul 불러오기
	
	
	// reservationTime value를 넣기 위한 선언
	var reservstionTimeInputValue = "";
	

    var today = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
    var date = new Date();  // @param 전역 변수, today의 Date를 세어주는 역할
    
    /**
     * @brief   이전달 버튼 클릭
     */
    function prevCalendar() {
        this.today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
        buildCalendar();    // @param 전월 캘린더 출력 요청
    }

    /**
     * @brief   다음달 버튼 클릭
     */
    function nextCalendar() {
        this.today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
        buildCalendar();    // @param 명월 캘린더 출력 요청
    }

    /**
     * @brief   캘린더 오픈
     * @details 날짜 값을 받아 캘린더 폼을 생성하고, 날짜값을 채워넣는다.
     */
    function buildCalendar() {

        let doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
        let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

        let tbCalendar = document.querySelector(".scriptCalendar > tbody");

        document.getElementById("calYear").innerText = today.getFullYear();                       // @param YYYY월
        document.getElementById("calMonth").innerText = autoLeftPad((today.getMonth() + 1), 2);   // @param MM월


        // @details 이전 캘린더의 출력결과가 남아있다면, 이전 캘린더를 삭제한다.
        while(tbCalendar.rows.length > 0) {
            tbCalendar.deleteRow(tbCalendar.rows.length - 1);
        }

        // @param 첫번째 개행
        let row = tbCalendar.insertRow();

        // @param 날짜가 표기될 열의 증가값
        let dom = 1;

        // @details 시작일의 요일값( doMonth.getDay() ) + 해당월의 전체일( lastDate.getDate())을  더해준 값에서
        //               7로 나눈값을 올림( Math.ceil() )하고 다시 시작일의 요일값( doMonth.getDay() )을 빼준다.
        let daysLength = (Math.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7) - doMonth.getDay();

        // @param 달력 출력
        // @details 시작값은 1일을 직접 지정하고 요일값( doMonth.getDay() )를 빼서 마이너스( - )로 for문을 시작한다.
        for(let day = 1 - doMonth.getDay(); daysLength >= day; day++) {

            let column = row.insertCell();

            // @param 평일( 전월일과 익월일의 데이터 제외 )
            if(Math.sign(day) == 1 && lastDate.getDate() >= day) {


                // @param 평일 날짜 데이터 삽입
                column.innerText = autoLeftPad(day, 2);
                
                // 날짜마다 각각의 아이디 부여
                column.id = ("day-"+day);
                


                // @param 일요일인 경우
                if(dom % 7 == 1) {
                    column.style.color = "#FF4D4D";
                    column.dataset.setting = 'sunday';  // 일요일에 click event를 부여하지 않기 위함
                }

                // @param 토요일인 경우
                if(dom % 7 == 0) {
                    column.style.color = "#4D4DFF";
                    row = tbCalendar.insertRow();   // @param 토요일이 지나면 다시 가로 행을 한줄 추가한다.
                }

            }

            // @param 평일 전월일과 익월일의 데이터 날짜변경
            else {
                let exceptDay = new Date(doMonth.getFullYear(), doMonth.getMonth(), day);
                column.innerText = autoLeftPad(exceptDay.getDate(), 2);
                column.style.color = "#A9A9A9";
            }

            // @brief   전월, 명월 음영처리
            // @details 현재년과 선택 년도가 같은경우
            if(today.getFullYear() == date.getFullYear()) {

                // @details 현재월과 선택월이 같은경우
                if(today.getMonth() == date.getMonth()) {

                    // @details 현재일보다 이전인 경우이면서 현재월에 포함되는 일인경우
                    if(date.getDate() > day && Math.sign(day) == 1) {
                        column.style.backgroundColor = "#E5E5E5";
                    }

                    // @details 현재일보다 이후이면서 현재월에 포함되는 일인경우
                    else if(date.getDate() < day && lastDate.getDate() >= day && column.dataset.setting != 'sunday') {
                        column.style.backgroundColor = "#FFFFFF";
                        column.style.cursor = "pointer";
                        column.onclick = function(){ calendarChoiceDay(this); }
                    }

                    // @details 현재일인 경우
                    else if(date.getDate() == day && column.dataset.setting != 'sunday') {
                        column.style.backgroundColor = "#FFFFE6";
                        column.style.cursor = "pointer";
                        column.onclick = function(){ calendarChoiceDay(this); }
                    }

                // @details 현재월보다 이전인경우
                } else if(today.getMonth() < date.getMonth()) {
                    if(Math.sign(day) == 1 && day <= lastDate.getDate()) {
                        column.style.backgroundColor = "#E5E5E5";
                    }
                }

                // @details 현재월보다 이후인경우
                else {
                    if(Math.sign(day) == 1 && day <= lastDate.getDate() && column.dataset.setting != 'sunday') {
                        column.style.backgroundColor = "#FFFFFF";
                        column.style.cursor = "pointer";
                        alert("cccc")
                        column.onclick = function(){ calendarChoiceDay(this); }
                    }
                }
            }

            // @details 선택한년도가 현재년도보다 작은경우
            else if(today.getFullYear() < date.getFullYear()) {
                if(Math.sign(day) == 1 && day <= lastDate.getDate()) {
                    column.style.backgroundColor = "#E5E5E5";
                }
            }

            // @details 선택한년도가 현재년도보다 큰경우
            else {
                if(Math.sign(day) == 1 && day <= lastDate.getDate() && column.dataset.setting != 'sunday') {
                    column.style.backgroundColor = "#FFFFFF";
                    column.style.cursor = "pointer";
                    column.onclick = function(){ calendarChoiceDay(this); }
                }
            }
            dom++;
        }
    }
    
    /*function setWorkTime(){
		// 시작 시간 설정 (10:00 AM)
		var startWorkTime = new Date();
		startWorkTime.setHours(10);
		startWorkTime.setMinutes(0);
	
		// 종료 시간 설정 (07:00 AM of the next day)
		var endWorkTime = new Date();
		endWorkTime.setHours(19);
		endWorkTime.setMinutes(0);
	
		// 30분 간격으로 시간을 반복하여 배열에 추가
		while (startWorkTime < endWorkTime) {
			WorkTime.push(startWorkTime.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', hour12: false }));
		  startWorkTime.setMinutes(startWorkTime.getMinutes() + 30);
		}
	}*/
 


    /**
     * @brief   날짜 선택
     * @details 사용자가 선택한 날짜에 체크표시를 남긴다.
     */
    function calendarChoiceDay(column) {

        // @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.
        if(document.getElementsByClassName("choiceDay")[0]) {
            document.getElementsByClassName("choiceDay")[0].style.backgroundColor = "#FFFFFF";
            document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");
        }

        // @param 선택일 체크 표시
        column.style.backgroundColor = "#4492FF";

        // @param 선택일 클래스명 변경
        column.classList.add("choiceDay");
        
    // timeTable 생성 시작
        // timeTable 초기화
        while(timeTable.firstChild){timeTable.removeChild(timeTable.firstChild);}	
        timeTable.innerHTML = ''; // 이 방법도 위와 동일하게 timeTable을 초기화한다
        
        var settedYear = document.querySelector("#calYear").innerHTML;
        var settedMonth = document.querySelector("#calMonth").innerHTML;
        var settedDay = column.innerHTML;
        
        var settedYearMonth = settedYear + "-" + settedMonth + "-" + settedDay;
        
        reservationTimeInputValue = settedYearMonth;
        
        var medicalDept = medicalDeptInput.value;
        
        var doctor = doctorInput.value;
        
        $.ajax({
        	type: "get",
        	url: "/appointment1/"+settedYearMonth+"/"+medicalDept+"/"+doctor+".json", // GET 방식이라서 parameter에 담아서 보냈다
        	contentType:"application/json; charset=utf-8", // return 받을 데이터의 형식을 지정
        	success:function(result){
        		console.log(result);
        		console.log(WorkTime);
        		for(var i = 0; i < WorkTime.length; i++){
        			// 반복문에서 li와 a 태그 생성
        			var li = document.createElement("li");
        			var a = document.createElement("a");
        			a.innerText = WorkTime[i];
        			a.href = "#";
        			
        			// 해당 시간이 예약 가능한지 확인
        			for(var j = 0; j < result.list.length; j++){
        				if(WorkTime[i] == result.list[j].reservationTime){
        					li.classList.add("blockedDay");  // blockedDay 예약 불가능한 날짜 마킹
        					a.disabled = true; // a태그 비활성화 ( 클릭, 마우스 이벤트가 동작하지 않음 )
        					break; // 예약 불가능함을 확인했으면 반복문을 멈춘다
        				}
        			}
        			
        			// 예약 가능하다면, click event 부여
        			if (!li.classList.contains("blockedDay")){
        				a.onclick = function(event){ ChoiceTime(event,this); }
        			}
        			
        			
        			li.appendChild(a);
        			timeTable.appendChild(li);
        		}
        		
        	}
        })
    }

    function autoLeftPad(num, digit) {
        if(String(num).length < digit) {
            num = new Array(digit - String(num).length + 1).join("0") + num;
        }
        return num;
    }
    
    
// 예약 시간 클릭 이벤트
    // 이전 선택 li 정보 저장 변수
    var prevSelectedLi = null;
    console.log(prevSelectedLi);
    
    // 예약 시간 클릭 이벤트 함수
    function ChoiceTime(event,aTag){
    	event.preventDefault();
    	console.log(aTag);
    	console.log(reservationTimeInputValue);
    	var rTimeFinal = reservationTimeInputValue+" "+aTag.innerText+":00";
    	reservationTimeInput.value = rTimeFinal;
    	
    	if(prevSelectedLi != null){
    		prevSelectedLi.style.backgroundColor = "transparent";
    	}
    	
    	var liTag = aTag.parentNode;
    	liTag.style.backgroundColor = "#FFC0CB"; // 이 부분을 변경해서 li를 꾸밀 것
    
    	prevSelectedLi = liTag;
    };
    
    
    
