<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table>
	<thead>
		<tr height="30">
			<th width="100">��ȣ</th>
			<th width="100">����</th>
			<th width="100">�ۼ���</th>
			<th width="100">�÷��� �ð�</th>
			<th width="100">Ƽ��</th>
			<th width="100">ť</th>
			<th width="100">����</th>
			<th width="100">�ۼ� �ð� </th>
<!--  			<th width="100">��ȸ��</th>  -->
		</tr>
	</thead>
	<tbody>
		

		<tr>
			<td>
			<form action = "tsbWriteFrm">
			<button>���ۼ�</button>
			</form>
			</td>
		</tr>
		
	</tbody>
		
		<tfoot class="tsbPaging">
			<tr>
				<td></td>
				<td></td>
				<td>${tsbPaging}</td>
			</tr>
		</tfoot>

	</table>
</body>
</html>