<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<div id="sub_img">
	<img src="images/mypage/sub_img.jpg" style="border-radius:20px 20px 20px 20px;">
</div>

<div id="clear"></div>

<nav id="sub_menu">
	<ul>
			<li><a href="shop.do?command=cartList">장바구니(cart)내역</a></li>
			<li><a href="shop.do?command=mypage">진행중인 주문내역</a></li>
			<li><a href="shop.do?command=orderAll">모든 주문내역</a></li>
			<li><a href="#" onclick="withdrawalConfirm();">회원탈퇴</a></li>
		</ul>
</nav>