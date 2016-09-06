
function delClass() {
	var className = $("#classSelect").find("option:selected").text();
	$("#classNameIput").attr("value",className) ;
	$("#delClassForm").submit() ;
}

function setClassId(id) {
	$("#classId").attr("value",id) ;
}

$(document).ready(function() {
	var  sel= $("#selectedIndex").text() ;
	if (sel != null&sel !=""){
		$("#classSelect").val(sel) ;
	}
	
})
