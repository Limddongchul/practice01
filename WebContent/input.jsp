<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script>
	$(document).ready(function() {

		$("#back").click(function() {
			$(location).attr("href", "index.jsp")
		})

	})
</script>


</head>
<body>
	<form action="input.do" method="get">
		<table border="1">

			<tr>
				<th colspan="2">정보 입력</th>
			</tr>

			<tr>
				<th>이름 :</th>
				<td><input type="text" placeholder="이름을 입력해주세요" name="name"></td>
			</tr>

			<tr>
				<th>전화번호 :</th>
				<td><input type="text" placeholder="전화번호를 입력해주세요" name="phone"></td>
			</tr>

			<tr>
				<th>이메일 :</th>
				<td><input type="text" placeholder="이메일을 입력해주세요" name="email"></td>
			</tr>

			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="입력하기"> <input type="button" id="back"
					value="뒤로가기"></td>


			</tr>

		</table>
	</form>


</body>
</html>