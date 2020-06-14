<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>개인면담 카드</title>
	<style>
		table{
			display:block;
		}
		td{
			border:1px dotted black
		}
		#title {
			background-color:purple;
			color:yellow;
			text-align:center;
		}
	</style>
</head>
<body>
	<h2>개인면담 카드</h2>
	<hr>
	<form action="StudentPro.jsp" method="post">
		<table>
			<tr>
				<td id="title">소속</td>
				<td><input type="text" name="dept"></td>
			</tr>
			<tr>
				<td id="title">이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td id="title">현주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td id="title">입사년월일</td>
				<td><input type="date" name="date"></td>
			</tr>
			<tr>
				<td id="title">최종학력</td>
				<td><input type="radio" name="education" value="중졸">중졸
						<input type="radio" name="education" value="고졸">고졸
						<input type="radio" name="education" value="전문대졸">전문대졸
						<input type="radio" name="education" value="대졸">대졸
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<fieldset>
					<legend>자격증</legend>
						<input type="checkbox" name="lice" value="자동차 2종">자동차 2종
						<input type="checkbox" name="lice" value="정보처리 산업기사">정보처리 산업기사
						<input type="checkbox" name="lice" value="컴퓨터 활용">컴퓨터 활용
						<input type="checkbox" name="lice" value="기타">기타
						</td>
			</tr>
			</fieldset>
			<br>
			<tr>
				<td id="title">상담내용</td>
				<td>
					<input type="text" name="consult" placeholder="상담내역 입력하기" style="width:90%; height:200px;">
				</td>
			</tr>
			<br>
			<td colspan="2">
				<input type="submit" value="입력완료">
				<input type="reset" value="다시입력">
			</td>
		</table>
	</form>
</body>
</html>