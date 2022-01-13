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
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/custom.css" />
    <!-- 제이쿼리  -->
    <script src="${path}/resources/js/jquery.js"></script>

<script>
$(document).ready(function(){

	$('#searchNameBtn').click(function(){
		var user_name = $('#user_name').val();
		$.ajax({ // ajax 는 데이터를 받아오는거 url받아오는거 아님 
			
			type : 'GET',
			url    : './searchName',
			data : {
				// 문자열 : 변수값...
				user_name : user_name
			},
			dataType : 'JSON',
			success : function(data) {
					//아이디에 해당하는 태그 자손들이 모두 삭제 
					$('#usersListTable').empty(); 
					var str = '';
					str += '<table style="width: 100%; height: auto; text-align: center" class="table table-hover">';	
					for(var i = 0; i < data.length; i++) {
						str += '<tr>';
							str += 	'<td style="width: 10%; text-align: center">'+ data[i].user_num +'</td>';
							str += 	'<td style="width: 10%; text-align: center">********</td>';
							str += 	'<td style="width: 10%; text-align: center">'+ data[i].user_name +'</td>';
							str += 	'<td style="width: 10%; text-align: center">'+ data[i].dept_num +'</td>';
							str += 	'<td style="width: 15%; text-align: center">'+ data[i].user_tel +'</td>';
							str += 	'<td style="width: 15%; text-align: center">'+ data[i].user_email +'</td>';
							str += 	'<td style="width: 30%; text-align: center">'+ data[i].user_add +'</td>';
						str += '</tr>';
					}
					str += '</table>';
					$('#usersListTable').append(str); 
			}
		
		});
		
	});
	
	
});

</script>
</head>
<body>
<div id="wrap">

    <!-- 상단 bar -->
    <div id="topBar">
      <!-- 상단 제목 -->
      <span>사원 관리</span>
    </div>

   	<!-- 유저 네비게이션 -->
    <jsp:include page = "adminNav.jsp" />

    <!-- contents 부분 -->
    <div id="contents" style="float: right; width: 88%; height: 100%">
      <div>
        <!-- 검색 폼 -->
        <div style="width: 30vw">
          <form style="margin: 5% 0 0 4%">
            <!-- 검색어 입력 -->
            <div class="row">
              <div class="form-group col-sm-6 col-md-6 col-lg-6">
                <input
                  type="text"
                  name="user_name"
                  class="form-control"
                  placeholder="사원검색"
                  id = "user_name"
                />
              </div>

              <!-- 검색버튼 -->
              <div class="form-group col-sm-3 col-md-3 col-lg-3">
                <button
                  type="button"
                  class="btn btn-info btn-block"
                  style="background-color: #b9d7ea; border: 1px solid #b9d7ea"
                  id = "searchNameBtn"
                  
                >
                  검색
                </button>
              </div>

              <!-- 사원등록 -->
              <div class="form-group col-sm-3 col-md-3 col-lg-3">
              <a href ="add_employee">
                <button
                  type="button"
                  class="btn btn-info btn-block"
                  style="background-color: #769fcd; border: 1px solid #769fcd"
                >
                  사원등록
                </button>
                </a>
              </div>
            </div>
          </form>
        </div>

        <!-- 테이블 항목 -->
        <div
          class="table-responsive"
          style="
            width: 70vw;
            height: auto;
            background-color: #f7fbfc;
            margin-left: 1%;
            border-top: 3px ridge #f9f9f9;
            border-bottom: 3px ridge #f9f9f9;
            box-sizing: border-box;
          "
        >
          <table
            style="
              width: 69vw;
              height: auto;
              margin: 0 -2% 0 0;
              text-align: center;
            "
            class="table borderless"
          >
            <tr>
              <td style="width: 10%; text-align: center">사원번호</td>
              <td style="width: 10%; text-align: center">비밀번호</td>
              <td style="width: 10%; text-align: center">이름</td>
              <td style="width: 10%; text-align: center">부서코드</td>
              <td style="width: 15%; text-align: center">전화번호</td>
              <td style="width: 15%; text-align: center">이메일</td>
              <td style="width: 30%; text-align: center">주소</td>
            </tr>
          </table>
        </div>
        <!-- 사원 목록 -->

        <div
          class="table-responsive"
          style="
            width: 70vw;
            height: 600px;
            margin-left: 1%;
            overflow: scroll;
          "
        >
        <div id = "usersListTable">
	          <table style="width: 100%; height: auto; text-align: center"  class="table table-hover" >
	          <c:forEach var = "user" items = "${user_list}" > <!--  controller에서 받아옴 -->
	            <tr>
	              <td style="width: 10%; text-align: center">${user.user_num }</td>
	              <td style="width: 10%; text-align: center">********</td>
	              <td style="width: 10%; text-align: center">${user.user_name }</td>
	              <td style="width: 10%; text-align: center">${user.dept_num }</td>
	              <td style="width: 15%; text-align: center">${user.user_tel }</td>
	              <td style="width: 15%; text-align: center">${user.user_email }</td>
	              <td style="width: 30%; text-align: center">${user.user_addr }</td>
	            </tr>
	            </c:forEach>
	            
	          </table>
          </div>
        </div>
      </div>
    </div>
    <!-- 테이블 끝 -->
</div>
</body>
</html>
