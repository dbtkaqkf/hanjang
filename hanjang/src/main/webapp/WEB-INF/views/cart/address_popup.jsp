<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����� ����</title>
</head>

<style>
.basic {
	width: 50px;
}

.change {
	width: 50px;
}
</style>

<body>
<h2>����� ����</h2>

<div id="address">
	<input type="text" id="basic" readonly/> ���� �� �ּ�
	<input type="text" id="change" /> ���� �� �ּ�
</div>

<div id="button">
	<button id="complete">����</button>
	<button id="cancel" onclick="self.close();">���</button>
</div>
</body>
</html>