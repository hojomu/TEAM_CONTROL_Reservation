      function getAgeAndGenderFromRRN() {
        var rrn = document.getElementById("rrn").value;
        // 생년월일 추출
        var birthYear = rrn.substring(0, 2);
        var birthMonth = rrn.substring(2, 4);
        var birthDay = rrn.substring(4, 6);

        // 현재 시간 정보 추출
        var now = new Date();
        var currentYear = now.getFullYear();
        var currentMonth = now.getMonth() + 1;
        var currentDay = now.getDate();

        // 만 나이 계산
        var age = currentYear - (1900 + parseInt(birthYear)) + 1;
        if (currentMonth < parseInt(birthMonth) || (currentMonth == parseInt(birthMonth) && currentDay < parseInt(birthDay))) {
          age--;
        }

        // 성별 계산
        var gender = (rrn.substring(6, 7) == "1" || rrn.substring(6, 7) == "3") ? "남성" : "여성";

        document.getElementById("age").innerHTML = "나이: " + age;
        document.getElementById("gender").innerHTML = "성별: " + gender;
      }
