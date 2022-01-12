<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERP Project</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
    <!-- 기본 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/reset.css" />
    <!-- 외부 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/login.css" />
    <!-- 네비 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/erpNav.css" />
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/custom.css" />
    <!-- 제이쿼리  -->
    <script src="${path}/resources/js/jquery.js"></script>

	<!-- font 링크--------------------------------------------->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

</head>

  <body>
  	
    <div id="wrap" style=" background-image: url(${path}/resources/images/login_bgimg.png);" >
    <form method = "POST" action = "./loginAction">
        <div id="login_box">
            <h1 class="login_logo"><img src="${path}/resources/images/login_logo.png" alt=""></h1>
            <div class="login_id">
                <h4>Employee number</h4>
                <div><input type="text" name="user_num"></div>
            </div>
            <div class="login_pw">
                <h4>PassWord</h4>
                <div><input type="password" name="user_pw"></div>
            </div>
            <input type="submit" id="login_btn" value="LOGIN"/>
        </div>
    </form>
    </div>
  </body>
  <script>
	$(document).ready(function(){
		var msg = '${msg}';
		if(msg != null && msg != '') alert(msg);
	});
</script>
</html>
