<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<%
		// 인코딩 
		request.setCharacterEncoding("euc-kr"); 
	%>
	<title>로그인 화면</title>
	
	
	<!-- 나중에 합칠때 경로 다시 설정해주셔야 할수도 있어요. -->
	<link href='./resources/css/join_style.css' rel='stylesheet' style='text/css'/>
	
	<script type="text/javascript">
	
		function checkValue()
		{
			inputForm = eval("document.loginInfo");
			if(!inputForm.id.value)
			{
				alert("아이디를 입력하세요");	
				inputForm.id.focus();
				return false;
			}
			if(!inputForm.password.value)
			{
				alert("비밀번호를 입력하세요");	
				inputForm.password.focus();
				return false;
			}
		}
	
		// 회원가입 버튼 클릭시 회원가입 화면으로 이동
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
					<td>아이디</td>
					<td><input type="text" name="id" maxlength="50"></td>
				</tr> 
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password" maxlength="50"></td>
				</tr> 
			</table>
			<br>
			<input type="submit" value="로그인"/> <br>
			<!-- <input type="button" value="회원가입" onclick="goJoinForm()" />  -->
			<input type="button" value="아이디찾기" onclick=""/>
			<input type="button" value="비밀번호찾기" onclick=""/>
		</form>
		
		<% 
			// 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
			// LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
			String msg=request.getParameter("msg");
			
			if(msg!=null && msg.equals("0")) // request.getAttribute("error") == "0" 
			{
				out.println("<br>");
				out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
			}
			else if(msg!=null && msg.equals("-1")) //request.getAttribute("error") == "-1"
			{	
				out.println("<br>");
				out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
			}
		%>	
	</div>	
</body>
</html>