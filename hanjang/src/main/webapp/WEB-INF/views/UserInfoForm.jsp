<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="jsp.member.model.MemberDAO" %>    
<%@ page import="jsp.member.model.MemberBean" %>
<html>
<head>
	<title>���� �������� ���ȭ��</title>
	
	<style type="text/css">
		table{
			margin-left:auto; 
			margin-right:auto;
			border:3px;
		}
		
		td{
			border:1px 
		}
		
		#title{
			background-color:white;
		}
	</style>
	
	<script type="text/javascript">
	
		function changeForm(val){
			if(val == "-1"){
				location.href="MainForm.jsp";
			}else if(val == "0"){
				location.href="MainForm.jsp?contentPage=member/view/ModifyFrom.jsp";
			}else if(val == "1"){
				location.href="MainForm.jsp?contentPage=member/view/DeleteForm.jsp";
			}
		}
		
	</script>
	
</head>
<body>
	<%
		String id = session.getAttribute("sessionID").toString();
		
		// ���ǿ� ����� ���̵� �����ͼ�
		// �� ���̵� �ش��ϴ� ȸ�������� �����´�.
		MemberDAO dao = MemberDAO.getInstance();
		MemberBean memberBean = dao.getUserInfo(id);
	%>

		<br><br>
		<b><font size="6" color="black">�� ����</font></b>
		<br><br><br>
						<!-- ������ ȸ�������� ����Ѵ�. -->
		<table>
			<tr>
				<td id="title">���̵�</td>
				<td><%=memberBean.getId() %></td>
			</tr>
						
			<tr>
				<td id="title">��й�ȣ</td>
				<td><%=memberBean.getPassword() %></td>
			</tr>
					
			<tr>
				<td id="title">�̸�</td>
				<td><%=memberBean.getName() %></td>
			</tr>
					
			<tr>
				<td id="title">����</td>
				<td><%=memberBean.getGender()%></td>
			</tr>
					
			<tr>
				<td id="title">����</td>
				<td>
					<%=memberBean.getBirthyy() %>�� 
					<%=memberBean.getBirthmm() %>�� 
					<%=memberBean.getBirthdd() %>��
				</td>
			</tr>
					
			<tr>
				<td id="title">�̸���</td>
				<td>
					<%=memberBean.getMail1() %>@
					<%=memberBean.getMail2() %>
				</td>
			</tr>
					
			<tr>
				<td id="title">�޴���ȭ</td>
				<td><%=memberBean.getPhone() %></td>
			</tr>
			<tr>
				<td id="title">�ּ�</td>
				<td>
					<%=memberBean.getAddress() %>
				</td>
			</tr>
		</table>
		
		<br>
		<input type="button" value="�ڷ�" onclick="changeForm(-1)">
		<input type="button" value="ȸ������ ����" onclick="changeForm(0)">
		<input type="button" value="ȸ��Ż��" onclick="changeForm(1)">
</body>
</html>