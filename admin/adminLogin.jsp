<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminLogin.jsp</title>
<link href="admin/css/admin.css" rel="stylesheet" />
<script src="admin/script/admin.js"></script>
</head>
<body>
<div id="wrap">
	<header>
		<div id="logo">
		<img src="admin/images/bar_01.gif" style="float:left;">
		<img src="admin/images/text.gif"></div>
	</header>	
	
	<div class="clear"></div>
	
	<article>
		<div id="loginForm">
			<form name="frm" method="post" action="shop.do">
				<input type="hidden" name="command" value="adminLogin">
				<table>
					<tr><td>아 이 디 </td><td><input type="text" name="workId" size="10"></td></tr>
					<tr><td>비밀번호 </td><td><input type="password" name="workPwd" size="10"></td></tr>
					<tr align="center">
						<td colspan="2">
							<input class="btn" type="submit" value="로그인" onclick="return workerCheck();">
							<br><br><h4 style="color:red">${message }</h4></td>
					</tr>
				</table>			
			</form>
		</div>
	</article>
</div>
</body>
</html>