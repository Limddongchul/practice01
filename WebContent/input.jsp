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
				<th colspan="2">���� �Է�</th>
			</tr>

			<tr>
				<th>�̸� :</th>
				<td><input type="text" placeholder="�̸��� �Է����ּ���" name="name"></td>
			</tr>

			<tr>
				<th>��ȭ��ȣ :</th>
				<td><input type="text" placeholder="��ȭ��ȣ�� �Է����ּ���" name="phone"></td>
			</tr>

			<tr>
				<th>�̸��� :</th>
				<td><input type="text" placeholder="�̸����� �Է����ּ���" name="email"></td>
			</tr>

			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="�Է��ϱ�"> <input type="button" id="back"
					value="�ڷΰ���"></td>


			</tr>

		</table>
	</form>


</body>
</html>