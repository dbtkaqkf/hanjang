<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>ȸ������ ȭ��</title>
	
	<!-- css ���� �и� -->
	<link href="../resouces/css/join_style.css" rel="stylesheet"/>
	
	<style>
	.button{
	border:1px solid #5f0080;
	color:#5f0080;
	width:130;height:43px;
	background:white;
	border-radius:3px;
		font-weight:700;
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
	border:1px solid #5f0080;
	color:#5f0080;
	background:white;
	border-radius:3px;
		font-weight:700;
}

		</style>


	<script type="text/javascript">
	
		// �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
		function checkValue()
		{
			if(!document.userInfo.id.value){
				alert("���̵� �Է��ϼ���.");
				return false;
			}
			
			if(!document.userInfo.password.value){
				alert("��й�ȣ�� �Է��ϼ���.");
				return false;
			}
			
			// ��й�ȣ�� ��й�ȣ Ȯ�ο� �Էµ� ���� �������� Ȯ��
			if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
				alert("��й�ȣ�� �����ϰ� �Է��ϼ���.");
				return false;
			}
		}
		
		// ��� ��ư Ŭ���� �α��� ȭ������ �̵�
		function goLoginForm() {
			location.href="LoginForm.jsp";
		}
	</script>
	
</head>
<body>
	<!-- div ����, ������ �ٱ������� auto�� �ָ� �߾����ĵȴ�.  -->
	<div id="wrap">
	 <div class="member_join_field">
		<br><br>
		<div style="text-align:center;"><h2>ȸ������</h2></div>
		<br><div style="text-align:right; font-size:10px;"><span id="startag">*</span>�ʼ��Է»���</div>
		<hr class="two_1">
		<br><br>
		
		
		<!-- �Է��� ���� �����ϱ� ���� form �±׸� ����Ѵ� -->
		<!-- �� ������ POST ���, ������ �������� JoinPro.jsp -->
		<form method="post" action="../pro/JoinPro.jsp" name="userInfo" 
				onsubmit="return checkValue()">
			<table>
				<tr>
					<td id="title">���̵�<span id="startag">*</span></td>
					<td>
						<input type="text" name="id" maxlength="50" class="input_text_f" placeholder="6�� �̻��� ���� Ȥ�� ������ ���ڸ� ����">
						<input type="button" value="�ߺ�Ȯ��"class="button">	
					</td>
				</tr>
						
				<tr>
					<td id="title">��й�ȣ<span id="startag">*</span></td>
					<td>
						<input type="password" name="password" maxlength="50" class="input_text_f"placeholder="��й�ȣ�� �Է����ּ���">
					</td>
				</tr>
				
				<tr>
					<td id="title">��й�ȣ Ȯ��<span id="startag" >*</span></td>
					<td>
						<input type="password" name="passwordcheck" maxlength="50" class="input_text_f" placeholder="��й�ȣ�� �ѹ� �� �Է����ּ���" >
					</td>
				</tr>
					
				<tr>
					<td id="title">�̸�<span id="startag">*</span></td>
					<td>
						<input type="text" name="name" maxlength="50" class="input_text_f" placeholder="�̸��� �Է����ּ���">
					</td>
				</tr>
					
				<tr>
					<td id="title">����</td>
					<td>
						<input type="radio" name="gender" value="��" checked>��
						<input type="radio" name="gender" value="��" checked>��
					</td>
				</tr>
					
				<tr>
					<td id="title">����</td>
					<td>
						<input type="text" name="birthyy" maxlength="4" placeholder="��(4��)" size="6" style="height:44px; border: 1px solid #ccc;">
						<select name="birthmm" style="height:44px; border: 1px solid #ccc;">
							<option value="">��</option>
							<option value="01" >1</option>
							<option value="02" >2</option>
							<option value="03" >3</option>
							<option value="04" >4</option>
							<option value="05" >5</option>
							<option value="06" >6</option>
							<option value="07" >7</option>
							<option value="08" >8</option>
							<option value="09" >9</option>
							<option value="10" >10</option>
							<option value="11" >11</option>
							<option value="12" >12</option>
						</select>
						<input type="text" name="birthdd" maxlength="2" placeholder="��" size="4"  style="border: 1px solid #ccc;height:44px;">
					</td>
				</tr>
					
				<tr>
					<td id="title">�̸���</td>
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
					<td id="title">�޴���ȭ</td>
					<td>
						<input type="text" name="phone"  class="input_text_f" placeholder="���ڸ� �Է����ּ���"/>
					</td>
				</tr>
				<tr>
					<td id="title">�ּ�</td>
					<td>
						<input type="text" size="50" name="address" style="height:44px; border: 1px solid #ccc;"/>
					</td>
				</tr>
			</table>
			<br><div style="text-align:center;">
			<input type="submit" value="����" class="butt">  
			<input type="button" value="���" onclick="goLoginForm()" class="butt">
			</div>
		</form>
		</div>
	</div>
</body>
</html>