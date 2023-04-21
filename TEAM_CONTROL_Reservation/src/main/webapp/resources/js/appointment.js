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
      var tabpanel = document.getElementById(tab.getAttribute('aria-controls'));
      
      tab.tabIndex = -1;
      tab.setAttribute('aria-selected', 'false');
      this.tabpanels.push(tabpanel);
      

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
    if (typeof setFocus !== 'boolean') {
      setFocus = true;
    }
    for (var i = 0; i < this.tabs.length; i += 1) {
      var tab = this.tabs[i];
      if (currentTab === tab) {
        tab.setAttribute('aria-selected', 'true');
        tab.removeAttribute('tabindex');
        this.tabpanels[i].classList.remove('is-hidden');
        if (setFocus) {
          tab.focus();
        }
      } else {
        tab.setAttribute('aria-selected', 'false');
        tab.tabIndex = -1;
        this.tabpanels[i].classList.add('is-hidden');
      }
    }
    
    // form 태그로 value 보내기
    var medicalDept = document.getElementById("medicalDept");
    medicalDept.value = currentTab.dataset.setting;
    
  }

  // 키다운 이벤트에서 첫 탭과 마지막 탭의 이동을 이어지게 하는 함수
	  setSelectedToPreviousTab(currentTab) {
	    var index;
	
	    if (currentTab === this.firstTab) {
	      this.setSelectedTab(this.lastTab);
	    } else {
	      index = this.tabs.indexOf(currentTab);
	      this.setSelectedTab(this.tabs[index - 1]);
	    }
	  }
	
	  setSelectedToNextTab(currentTab) {
	    var index;
	
	    if (currentTab === this.lastTab) {
	      this.setSelectedTab(this.firstTab);
	    } else {
	      index = this.tabs.indexOf(currentTab);
	      this.setSelectedTab(this.tabs[index + 1]);
	    }
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

// 진료예약 클릭 이벤트
function clickDoctorSubmit(eachATag,event){
    var doctor = document.getElementById("doctor");
    doctor.value = eachATag.dataset.setting;
}

// Initialize tablist

window.addEventListener('load', function () {
  var tablists = document.querySelectorAll('[role=tablist].automatic');
  for (var i = 0; i < tablists.length; i++) {
    new TabsAutomatic(tablists[i]);
  }
  var dtSubmit = document.querySelectorAll(".doctor-submit");
  var dtSubmitArray = Array.from(dtSubmit);
  console.log(dtSubmitArray.length);
  
  for (var i = 0; i < dtSubmitArray.length; i++){
	  var eachATag = dtSubmitArray[i];
	  eachATag.addEventListener('click', function(event){
		  event.preventDefault();
		  clickDoctorSubmit(eachATag,event);
	  });
  }
});
