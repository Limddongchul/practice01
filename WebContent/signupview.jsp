<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>


</head>
<body>
	
	<script>
	
		if(${result} > 0 ) {
		 	alert("�Է��� �Ϸ�Ǿ����ϴ�");
			$(document).attr("href", "input.jsp");		 	
		}else {
			alert("�Է½��� �����ڿ��� �����ϼ���");
		}
	
	</script>
	
	
</body>
</html>