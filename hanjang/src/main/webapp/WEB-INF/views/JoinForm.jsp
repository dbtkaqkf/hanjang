<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>회원가입 화면</title>
	
	<!-- css 파일 분리 -->
	<link href="../resouces/css/join_style.css" rel="stylesheet"/>
	
	<style>
	.button{
	
	color:#5f0080;
	width:130;height:43px;
	background:white;
	border-radius:3px;
		font-weight:700;
		border-radius:2px;
		font-weight:700;
  border: solid 3px transparent;
  background-image: linear-gradient(rgba(255, 255, 255, 0), rgba(255, 255, 255, 0)), linear-gradient(61deg, #7effa8, #3fcbff );
  background-origin: border-box;
  background-clip: content-box, border-box;
	}
	#wrap{
	width:1050px;
	margin: 0 auto;
	}
	
	.member_join_field{
	width:640px;
	margin:0 auto;}
	
	.member_join_field table{
	font-weight:700;
	font-size:14px;
	}
	#startag{
	color:red;
	font-size:14px;
	}
	
	#title{
  width:130px;
  height:60px;
	}
.input_text_f{
width:332px;
height:44px;
border: 1px solid #ccc;
}

.butt{
width:120px;
height:44px;
	
	color:#5f0080;
	background:white;
	border-radius:2px;
		font-weight:700;
  border: solid 3px transparent;
  background-image: linear-gradient(rgba(255, 255, 255, 0), rgba(255, 255, 255, 0)), linear-gradient(61deg, #7effa8, #3fcbff );
  background-origin: border-box;
  background-clip: content-box, border-box;
  
}

.two_1{
   height: 2px;
   border: none;
   background-image: -webkit-linear-gradient(45deg,#7effa8,#3fcbff);}


		</style>


	<script type="text/javascript">
	
		// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
		function checkValue()
		{
			if(!document.userInfo.id.value){
				alert("아이디를 입력하세요.");
				return false;
			}
			
			if(!document.userInfo.password.value){
				alert("비밀번호를 입력하세요.");
				return false;
			}
			
			// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
			if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
				alert("비밀번호를 동일하게 입력하세요.");
				return false;
			}
		}
		
		// 취소 버튼 클릭시 로그인 화면으로 이동
		function goLoginForm() {
			location.href="LoginForm.jsp";
		}
	</script>
	
</head>
<body>
	<!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
	<div id="wrap">
	 <div class="member_join_field">
		<br><br>
		<div style="text-align:center;"><h2>회원가입</h2></div>
		<br><div style="text-align:right; font-size:10px;"><span id="startag">*</span>필수입력사항</div>
		<hr class="two_1">
		<br><br>
		
		
		<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
		<!-- 값 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
		<form method="post" action="JoinPro.do" name="userInfo" 
				onsubmit="return checkValue()">
			<table>
				<tr>
					<td id="title">아이디<span id="startag">*</span></td>
					<td>
						<input type="text" name="id" maxlength="50" class="input_text_f" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
						<input type="button" value="중복확인"class="button">	
					</td>
				</tr>
				
				<tr>
					<td id="title">닉네임<span id="startag">*</span></td>
					<td>
						<input type="text" name="nickname" maxlength="50" class="input_text_f" placeholder="8자이하로 입력하세요">
					</td>
				</tr>
						
				<tr>
					<td id="title">비밀번호<span id="startag">*</span></td>
					<td>
						<input type="password" name="password" maxlength="50" class="input_text_f"placeholder="비밀번호를 입력해주세요">
					</td>
				</tr>
				
				<tr>
					<td id="title">비밀번호 확인<span id="startag" >*</span></td>
					<td>
						<input type="password" name="passwordcheck" maxlength="50" class="input_text_f" placeholder="비밀번호를 한번 더 입력해주세요" >
					</td>
				</tr>
					
				<tr>
					<td id="title">이름<span id="startag">*</span></td>
					<td>
						<input type="text" name="name" maxlength="50" class="input_text_f" placeholder="이름을 입력해주세요">
					</td>
				</tr>
					
				<tr>
					<td id="title">성별</td>
					<td>
						<input type="radio" name="gender" value="남" checked>남
						<input type="radio" name="gender" value="여" checked>여
					</td>
				</tr>
					
				<tr>
					<td id="title">생일</td>
					<td>
							<input type="text" name="birthdate" maxlength="50" class="input_text_f" placeholder="ex)19990101">
					</td>
				</tr>
					
				<tr>
					<td id="title">이메일</td>
					<td>
						<input type="text" name="mail1" maxlength="50" style="width:170px; height:44px; border: 1px solid #ccc; border-radius:3px">@
						<select name="mail2" style="width:148px; height:44px; border: 1px solid #ccc; border-radius:3px">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>						
						</select>
					</td>
				</tr>
					
				<tr>
					<td id="title">휴대전화</td>
					<td>
						<input type="text" name="phone"  class="input_text_f" placeholder="숫자만 입력해주세요"/>
					</td>
				</tr>
				<tr>
					<td id="title">주소</td>
					<td>
						<input type="text" size="50" name="address" style="height:44px; border: 1px solid #ccc;"/>
					</td>
				</tr>
			</table>
			<br><div style="text-align:center;">
			<input type="submit" value="가입" class="butt">  
			<input type="button" value="취소" onclick="goLoginForm()" class="butt">
			</div>
		</form>
		</div>
	</div>
</body>
</html>