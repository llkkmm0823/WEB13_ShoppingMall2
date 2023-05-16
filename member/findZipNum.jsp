<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findZipNum.jsp</title>
<link href="css/shopping.css" rel="stylesheet">
<script src="member/member.js"></script>
</head>
<body>
	<div id="popup">
		
		<h1>우편번호 검색</h1><!--다른 동 재 검색-->
		<form method="post" name="formm" action="shop.do">
			<input type="hidden" name="command" value="findZipNum">
			동 이름 : <input name="dong" type="text"> <input type="submit" value="찾기" class="submit">	
		</form>
		
		<!--검색된 우편번호와 동이 표시되는 곳 -->
		<table id="zipcode">
			<tr><th width="100"> 우편번호</th><th>주소</th></tr>
			<c:forEach items="${addressList}" var="add">
				<tr>
					<td>
						<a href='#' 
						onClick="result('${add.zip_num}','${add.sido}','${add.gugun}','${add.dong}');">
						${add.zip_num}</a></td>
					<td>
						<a href='#' 
						onClick="result('${add.zip_num}','${add.sido}','${add.gugun}','${add.dong}');">
						${add.sido} ${add.gugun} ${add.dong}</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>