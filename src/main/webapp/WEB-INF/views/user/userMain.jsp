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
    <!-- 네비 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/erpNav.css" />
    <!-- 회계 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/account.css" />
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/custom.css" />
    <!-- 부트스트랩 JS -->
	<script src="${path}/resources/js/bootstrap.js"></script>	
    <!-- 제이쿼리  -->
    <script src="${path}/resources/js/jquery.js"></script>

	<!-- font 링크--------------------------------------------->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

</head>
<body>
<div id="wrap">

     <!-- 상단 bar -->
     <div id="topBar">
       <!-- 상단 제목 -->
       <span>Main	</span>
     </div>

    
    <!-- 유저 네비게이션 -->
    <jsp:include page = "userNav.jsp" />
    
	<!-- contents 부분 -->
	<div id="contents">
	</div>
	
</div>
</body>
</html>