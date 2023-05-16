<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<%@ include file="sub_image_menu.html"%>

<article>
	<h1>Login</h1>
	<form method="post" action="shop.do" name="loginFrm">
		<input type="hidden" name="command" value="login">
		
		<fieldset>
			<legend></legend>
			<label>UserID</label><input name="id" type="text"><br> <label>Password</label><input
				name="pwd" type="password"><br>
		</fieldset>
		
		<div id="buttons">
			<input type="submit" value="로그인" class="submit" onclick="return loginCheck()">
			<input type="button" value="회원가입" class="cancel" onclick=""> 
			<input type="button" value="아이디/비밀번호 찾기" class="submit">
		</div><br><br><br>
		
		<div>&nbsp;&nbsp;&nbsp;${param.message}</div>
				<div>&nbsp;&nbsp;&nbsp;${message}</div>
		
	</form>
</article>
<%@ include file="../footer.jsp"%>