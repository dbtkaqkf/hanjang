<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>Ż�� ȭ��</title>
	
	<style type="text/css">
		table{
			margin-left:auto; 
			margin-right:auto;
			border:3px ;
		}
		
		td{
			border:1px ;
		}
		
		#title{
			background-color:white;
		}
	</style>
	
	<script type="text/javascript">
		// ��й�ȣ ���Է½� ���â
		function checkValue(){
			if(!document.deleteform.password.value){
				alert("��й�ȣ�� �Է����� �ʾҽ��ϴ�.");
				return false;
			}
		}
	</script>
	
</head>
<body>

	<br><br>
	<b><font size="6" color="black">�� ����</font></b>
	<br><br><br>

	<form name="deleteform" method="post" action="MainForm.jsp?contentPage=member/pro/DeletePro.jsp"
		onsubmit="return checkValue()">

		<table>
			<tr>
				<td bgcolor="black">��й�ȣ</td>
				<td><input type="password" name="password" maxlength="50"></td>
			</tr>
		</table>
		
		<br> 
		<input type="button" value="���" onclick=""> <!-- ����  -->
		<input type="submit" value="Ż��" /> 
	</form>
</body>
</html>