<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<%
		// ���ڵ� 
		request.setCharacterEncoding("euc-kr"); 
	%>
	<title>�α��� ȭ��</title>
	
	
	<!-- ���߿� ��ĥ�� ��� �ٽ� �������ּž� �Ҽ��� �־��. -->
	<link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>
	
	<script type="text/javascript">
	
		function checkValue()
		{
			inputForm = eval("document.loginInfo");
			if(!inputForm.id.value)
			{
				alert("���̵� �Է��ϼ���");	
				inputForm.id.focus();
				return false;
			}
			if(!inputForm.password.value)
			{
				alert("��й�ȣ�� �Է��ϼ���");	
				inputForm.password.focus();
				return false;
			}
		}
	
		// ȸ������ ��ư Ŭ���� ȸ������ ȭ������ �̵�
		function goJoinForm() {
			location.href="JoinForm.jsp";
		}	
	</script>

</head>
<body>
	<div id="wrap">
		<form name="loginInfo" method="post" action="../pro/LoginPro.jsp" 
				onsubmit="return checkValue()">
		
			
			<img src="../../img/welcome.jpg">
			<br><br>
			
			<table>
				<tr>
					<td>���̵�</td>
					<td><input type="text" name="id" maxlength="50"></td>
				</tr> 
				<tr>
					<td>��й�ȣ</td>
					<td><input type="password" name="password" maxlength="50"></td>
				</tr> 
			</table>
			<br>
			<input type="submit" value="�α���"/> <br>
			<!-- <input type="button" value="ȸ������" onclick="goJoinForm()" />  -->
			<input type="button" value="���̵�ã��" onclick=""/>
			<input type="button" value="��й�ȣã��" onclick=""/>
		</form>
		
		<% 
			// ���̵�, ��й�ȣ�� Ʋ����� ȭ�鿡 �޽��� ǥ��
			// LoginPro.jsp���� �α��� ó�� ����� ���� �޽����� ������.
			String msg=request.getParameter("msg");
			
			if(msg!=null && msg.equals("0")) // request.getAttribute("error") == "0" 
			{
				out.println("<br>");
				out.println("<font color='red' size='5'>��й�ȣ�� Ȯ���� �ּ���.</font>");
			}
			else if(msg!=null && msg.equals("-1")) //request.getAttribute("error") == "-1"
			{	
				out.println("<br>");
				out.println("<font color='red' size='5'>���̵� Ȯ���� �ּ���.</font>");
			}
		%>	
	</div>	
</body>
</html>