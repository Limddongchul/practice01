<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
	
		<tr>
			<th colspan="3">���</th>
		</tr>
	
		<tr>
			
			<td>�̸�</td>
			<td>����ó</td>
			<td>�̸���</td>
			
		</tr>
		
<c:forEach var="item" items="${person}">						
			
		<tr>
			<td>${person.name}</td>
			<td>${person.phone}</td>
			<td>${person.email}</td>
		</tr>	

</c:forEach>	
	
	</table>

</body>
</html>