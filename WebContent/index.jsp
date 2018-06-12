<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style>

	table {
		margin: 0px auto;
	}

</style>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script>
	
	$(document).ready(function() {
		
		$("#input").click(function() {
			$(location).attr("href", "input.jsp")
		})
	
		$("#output").click(function() {
			$(location).attr("href", "output.jsp")
		})
		
	}) 

</script>
</head>
<body>

		<table border="1">
		<tr>
		<th colspan="2">Index</th>
		</tr>
		
		<tr>
		<td><input type="button" id="input" value="Input"></td>
		<td><input type="button" id="output" value="Output"></td>
		</tr>
		
	
	</table>


</body>
</html>