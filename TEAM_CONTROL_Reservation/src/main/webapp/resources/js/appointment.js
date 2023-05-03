// appointment page script

/*
 *   This content is licensed according to the W3C Software License at
 *   https://www.w3.org/Consortium/Legal/2015/copyright-software-and-document
 *
 *   File:   tabs-automatic.js
 *
 *   Desc:   Tablist widget that implements ARIA Authoring Practices
 */

'use strict';

// 달력 삭제를 위해 전역 변수로 선언
const allCalendar = document.querySelector(".scriptCalendar");

// 탭 생성자
class TabsAutomatic {
	// 탭 구성
  constructor(groupNode) {
    this.tablistNode = groupNode;

    this.tabs = [];

    this.firstTab = null;
    this.lastTab = null;
    
    // 탭들을 배열에 저장함
    this.tabs = Array.from(this.tablistNode.querySelectorAll('[role=tab]'));
    this.tabpanels = [];
    
    // 각 탭에 탭 이동하기 위한 index 설정 및 이벤트 부여
    for (var i = 0; i < this.tabs.length; i += 1) {
      var tab = this.tabs[i];
      
      tab.tabIndex = -1;
      tab.setAttribute('aria-selected', 'false');

      tab.addEventListener('keydown', this.onKeydown.bind(this));
      tab.addEventListener('click', this.onClick.bind(this));

      if (!this.firstTab) {
        this.firstTab = tab;
      }
      this.lastTab = tab;
    }

    this.setSelectedTab(this.firstTab, false);
  }

  //선택한 탭 활성화 , 해당 탭에 focus() 를 줘서 사용자가 접근할 수 있게 해준다.
  setSelectedTab(currentTab, setFocus) {
	  console.log(currentTab);
	  while(timeTable.firstChild){timeTable.removeChild(timeTable.firstChild);}
    if (typeof setFocus !== 'boolean') {
      setFocus = true;
    }
    for (var i = 0; i < this.tabs.length; i += 1) {
      var tab = this.tabs[i];
      if (currentTab === tab) {
        tab.setAttribute('aria-selected', 'true');
        tab.removeAttribute('tabindex');
        if (setFocus) {
          tab.focus();
        }
      } else {
        tab.setAttribute('aria-selected', 'false');
        tab.tabIndex = -1;
      }
    }
    
    // form 태그로 value 보내기
    medicalDeptInput.value = currentTab.dataset.setting;
    doctorInput.value="";
    reservationTimeInput.value="";
    
    // 의사 리스트 호출
    list(currentTab);
    
    // 달력 숨기기
    allCalendar.classList.add("dis-none");
    
  }

  // 키다운 이벤트에서 첫 탭과 마지막 탭의 이동을 이어지게 하는 함수
	  setSelectedToPreviousTab(currentTab) {
		while(timeTable.firstChild){timeTable.removeChild(timeTable.firstChild);}
		  
	    var index;
	
	    if (currentTab === this.firstTab) {
	      this.setSelectedTab(this.lastTab);
	    } else {
	      index = this.tabs.indexOf(currentTab);
	      this.setSelectedTab(this.tabs[index - 1]);
	    }
	    
	    // 달력 숨기기
	    allCalendar.classList.add("dis-none");
	    
	  }
  // 키다운 이벤트에서 첫 탭과 마지막 탭의 이동을 이어지게 하는 함수
	  setSelectedToNextTab(currentTab) {
		while(timeTable.firstChild){timeTable.removeChild(timeTable.firstChild);}
	    var index;
	
	    if (currentTab === this.lastTab) {
	      this.setSelectedTab(this.firstTab);
	    } else {
	      index = this.tabs.indexOf(currentTab);
	      this.setSelectedTab(this.tabs[index + 1]);
	    }
	    // 달력 숨기기
	    allCalendar.classList.add("dis-none");
	  }

  /* EVENT HANDLERS */
  onKeydown(event) {
    var tgt = event.currentTarget,
      flag = false;

    switch (event.key) {
      case 'ArrowLeft':
        this.setSelectedToPreviousTab(tgt);
        flag = true;
        break;

      case 'ArrowRight':
        this.setSelectedToNextTab(tgt);
        flag = true;
        break;

      case 'Home':
        this.setSelectedTab(this.firstTab);
        flag = true;
        break;

      case 'End':
        this.setSelectedTab(this.lastTab);
        flag = true;
        break;

      default:
        break;
    }

    if (flag) {
      event.stopPropagation();
      event.preventDefault();
    }
  }

  onClick(event) {
    this.setSelectedTab(event.currentTarget);
  }
}

//진료예약 클릭 이벤트
function clickDoctorSubmit(event, doctor){
	 event.preventDefault()
	 // 이전 테이블 지우기, 의사 정보 넣기
	 while(timeTable.firstChild){timeTable.removeChild(timeTable.firstChild);}
	 var doctorInput = document.getElementById("doctor");
	 doctorInput.value = doctor.dataset.setting;
	 
	 // 탭 변경
	 document.getElementById('tab-2').checked = false;
	 document.getElementById('tab-3').checked = true;
	 
	 // 캘린더 호출
	 buildCalendar();
	 allCalendar.classList.remove("dis-none");
	 reservationTimeInput.value="";
}

//데이터 값 불러오기
function list(param){// list함수 선언 시작
	
	var medicalDept = param.dataset.setting;
	
	console.log("list 함수 진료과 : "+medicalDept)
	
	$.getJSON("/appointment1/"+ medicalDept + ".json",function(data){
		console.log(data)
		
		var str=""; 
		
		for(var i=0; i<data.length; i++){
			str += "<li><img src='"+data[i].doctorImg+"'></li>"
			str += "<li>"+data[i].medicalDept+"</li>"
			str += "<li>"+data[i].doctor+"</li>"
			str += "<li>"+data[i].specialty+"</li>"
			str += "<li><a href='javascript:void(0)' class='doctor-submit' onclick='clickDoctorSubmit(event,this)' data-setting='"+data[i].doctor+"'><span>진료예약하기</span></a></li>"
			
		}
		
		$("#doctorInfo").html(str);		
      })
      
}


// 페이지 렌더링 시
window.addEventListener('load', function () {
	  var tablists = document.querySelectorAll('[role=tablist].automatic');
	  for (var i = 0; i < tablists.length; i++) {
	    new TabsAutomatic(tablists[i]);
	  }
	  setWorkTime();
});


// calendar =========================================



