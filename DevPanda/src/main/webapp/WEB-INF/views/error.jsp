<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(function() {
	$('#homeBtn').click(function() {
		location.href = '/devpanda';
	});
});
</script>
<style>
.error {
	width: 60%;
	margin-top: 20px;
	margin-left: auto;
	margin-right: auto;
}
.error table {
	width: 100%;
}
.error th, .error td {
	padding: 5px;
}
.buttonDiv {
	margin-top: 20px;
	text-align: center;
}
.buttonDiv button {
	width: 80px;
	height: 39px;
	background: #50c0e9;
	box-sizing: border-box;
	border-radius: 5px;
	border: 0 solid transparent;
	color: #fff;
	font-weight: bold;
	font-size: 14px;
	cursor: pointer;
}
</style>
</head>
<body>
<div class="error">
	<h1>오류가 발생하였습니다</h1>
	<hr>
	<table>
		<colgroup>
			<col style="width: 25%;">
			<col style="width: 75%;">
		</colgroup>
		<tbody>
			<tr>
				<th>오류명</th>
				<td>${err }</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<div class="buttonDiv">
		<button type="button" id="homeBtn">홈으로</button>
	</div>
</div>
</body>
</html>