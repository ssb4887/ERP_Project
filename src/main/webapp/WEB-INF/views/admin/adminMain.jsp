<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERP Project</title>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />
<!-- 기본 CSS -->
<link rel="stylesheet" href="${path}/resources/css/reset.css" />
<!-- 네비 CSS -->
<link rel="stylesheet" href="${path}/resources/css/erpNav.css" />
<!-- 부트스트랩 CSS -->
<link rel="stylesheet"
	href="${path}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${path}/resources/css/bootstrap/custom.css" />
<!-- 제이쿼리  -->
<script src="${path}/resources/js/jquery.js"></script>

</head>
<body>
<div id="wrap">

     <!-- 상단 bar -->
     <div id="topBar">
       <!-- 상단 제목 -->
       <span>Admin Main</span>
     </div>

	<!-- 유저 네비게이션 -->
    <jsp:include page = "adminNav.jsp" />
    
   	<!-- contents 부분 -->
	<div id="contents" style="float: right; width: 88%; height: 100%;">
	
	</div>
</div>
</body>
</html>
