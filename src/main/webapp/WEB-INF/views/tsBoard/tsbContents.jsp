<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>



<!--  ������ �ۼ��� ť Ƽ�� ���� �÷��� �ð� ���̽� ���� , ������-->
		
<table>
		<tr height="30">
			<th width="200" style="font-size:50px;">����</th> <td style="font-size:40px;">${tsbContents.getTsb_title()}</td>
		</tr>
		<tr height="30">
			<th width="200" style="font-size:50px;">�ۼ���</th> <td style="font-size:40px;">${tsbContents.getTsb_id()}</td>
		</tr>
		<tr height="30">
			<th width="200" style="font-size:50px;">ť</th> <td style="font-size:40px;">${tsbContents.getTsb_que()}</td>
		</tr>
		<tr height="30">
			<th width="200" style="font-size:50px;">Ƽ��</th> <td style="font-size:40px;">${tsbContents.getTsb_tier()}</td>
		</tr>
		<tr height="30">
			<th width="200" style="font-size:50px;">����</th> <td style="font-size:40px;">${tsbContents.getTsb_lane()}</td>
		</tr>
		<tr height="30">
			<th width="200" style="font-size:50px;">�÷��̽ð�</th> <td style="font-size:40px;">${tsbContents.getTsb_time()}</td>
		</tr>
		<tr height="30">
			<th width="200" style="font-size:50px;">���̽� ����</th> <td style="font-size:40px;">${tsbContents.getTsb_voice()}</td>
		</tr>
		<tr height="30">
			<th width="200" style="font-size:50px;">�� ����</th> <td style="font-size:30px;">${tsbContents.getTsb_contents()}</td>
		</tr>
		
		<!-- 
		<tr>
			<td>
			<input type="button" value="�� ����" onclick="deleteBt(${tsbContents.getTsb_postNum()})">
			</td>
		</tr>
		 -->
	</table>
			
</body>
<script type="text/javascript">
function deleteBt(postnum){
	var chk = confirm("���� �����Ͻðڽ��ϱ� ? ")
	$ajax({
		url : "TsbDelete"
		type : 'POST',
		traditional : true ,
		data : :postnum,
		success : function(data){
			alert("�����Ǿ����ϴ�");
			location.replace("/tsbList")
		}
		error:function(error){			
	         console.log(error);
	      }
	});
}
</script>

</html>