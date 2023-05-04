/**
 * 
 */

  document.getElementById('now_date1').value = new Date().toISOString().substring(0, 10);
  document.getElementById('now_date2').value = new Date().toISOString().substring(0, 10);
  
  
 $(document).ready(function(){
	
	 $("#medicalDept").on("change",function(){
		 /*alert("aaa");*/
		 var medicalDeptValue = $("select[name='mecicalDept']").val();
		 /*alert(medicalDeptValue);*/
		 console.log(medicalDeptValue);
		 list({medicalDept:medicalDeptValue});
	 })
	 
	 function list(param){
	
	  var medicalDept = param.medicalDept;	 
	  console.log(medicalDept)
	  
      $.getJSON("/managercheck/"+ medicalDept + ".json",function(data){
    	  console.log(data)
    	  
    	  var str="";
    	  
    	  for(var i=0; i<data.length; i++){
    		  str += "<option>" + data[i].doctor+"</option>"
    	  }
    		$("#doctor").html(str);	
      });
	 
	 };
	 
 });
 
