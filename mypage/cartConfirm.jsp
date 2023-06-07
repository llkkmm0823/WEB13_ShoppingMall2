<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="mypage/mypage.js"></script>
<script>
var a = confirm("장바구니로 이동하시겠습니까?");
if(a){
	location.href='shop.do?command=cartList';
} else {
	history.go(-1); //  단순히 뒤로 가는 것 이기 때문에 중복동작이 될 수 있음. 상황에 따라 사용할 것
}
</script>
