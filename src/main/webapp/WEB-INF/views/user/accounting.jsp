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

    <!-- 제이쿼리  -->
    <script src="${path}/resources/js/jquery.js"></script>
	<script>
      $(document).ready(function () {
        $("input:checkbox").on("click", function () {
          if ($(this).prop("checked")) {
            $(this).parent().parent().addClass("selected");
          } else {
            $(this).parent().parent().removeClass("selected");
          }
        });
      });
    </script>

</head>
<body>
<div id="wrap">
    
     <!-- 상단 bar -->
     <div id="topBar">
       <!-- 상단 제목 -->
       <span>고객 관리</span>
     </div>
    
    <!-- 유저 네비게이션 -->
    <jsp:include page = "userNav.jsp" />
    
	<!-- contents 부분 -->
	<div id="contents"
		style="float: right; margin-top: 1vh; width: 88vw; height: 87vh;">
		
			<!-- 테이블 항목 -->
			<div class="table-responsive"
				style="width: 100%; height: auto; display: block; box-sizing: border-box;">
				
				<!-- 전표입력부분 -->
				<ul id="add_Acc">
					<li>
						<ul id="add_con">
							<li>회계단위</li>
							<li class="acc_search"><input type="text" /></li>
							<li class="search_btn"><a>검색</a></li>
						</ul>
					</li>
					<li>
						<ul id="add_con">
							<li>작성자</li>
							<li class="acc_search"><input type="text" /></li>
							<li class="search_btn"><a>검색</a></li>
						</ul>
					</li>
					<li>
						<ul id="add_conday">
							<li>작성일자</li>
							<li class="acc_searchday"><input type="date" /></li>
						</ul>
					</li>
				</ul>
				
				<!-- 전표입력 종료 -->
				<!-- 조회 탭 -->
				<div class="read_table"
					style="width: 86vw; height: 55vh; margin-left: 1vw; margin-top: 1vh; text-align: center; border: 2px solid #769fcd;">
					
						<!-- 제목 -->
						<div class="table_title" style="height: 3vh">
								<div style="width: 2%; height: 3vh; text-align: center; margin: 0">
									<i class="fas fa-tasks"></i>
								</div>
								<div style="width: 4%; height: 3vh; text-align: center">차/대</div>
								<div style="width: 9%; height: 3vh; text-align: center">항목</div>
								<div style="width: 12%; height: 3vh; text-align: center">발생일</div>
								<div style="width: 14%; height: 3vh; text-align: center">금액</div>
								<div style="width: 10%; height: 3vh; text-align: center">발생위치</div>
								<div style="width: 10%; height: 3vh; text-align: center">작업자</div>
								<div style="width: 39%; height: 3vh; text-align: center">비고</div>
						</div>
					
						<!-- 내용 -->
						
						<div class="read_all"
							style="width: 100%; height: 51vh; overflow-y: scroll;">
									
									<c:forEach var="acc" items ='${acc_list}'>
										<div class="table_con" style="height: 25px">
											<div style="width: 2%; text-align: center;">
												<input style=" margin-top: 2px;" type="checkbox" name="check" value="check" />
											</div>
											<div style="width: 4%; text-align: center"></div>
											<div style="width: 9%; text-align: center"></div>
											<div style="width: 12%; text-align: center"></div>
											<div style="width: 14%; text-align: center"></div>
											<div style="width: 10%; text-align: center"></div>
											<div style="width: 10%; text-align: center"></div>
											<div style="width: 39%; text-align: center"></div>
										</div>
									</c:forEach>
							</div>
							
						
						
					</div>
				
					<!-- 입력 테이블 -->
					<div class="add_table"
						style="width: 86vw; height: 6.3vh; margin-left: 1vw; margin-top: 5vh; text-align: center; border: 2px solid #769fcd; border-bottom: none;">
						<!-- 제목 -->
						<div class="table_title" style="height: 3vh">
							<div style="width: 4%; height: 3vh; text-align: center">차/대</div>
							<div style="width: 9%; height: 3vh; text-align: center">항목</div>
							<div style="width: 12%; height: 3vh; text-align: center">발생일</div>
							<div style="width: 14%; height: 3vh; text-align: center">금액</div>
							<div style="width: 10%; height: 3vh; text-align: center">발생위치</div>
							<div style="width: 51%; height: 3vh; text-align: center">비고</div>
						</div>
						<div class="table_con" style="height: 3vh;">
							<div style="width: 4%; text-align: center;">
								<input onkeydown="if (event.keyCode == 13) acc_ctg.focus();" type="text" id="acc_payment"/>
							</div>
							<div style="width: 9%; text-align: center;">
								<input onkeydown="if (event.keyCode == 13) acc_occdate.focus();" type="text" id="acc_ctg" />
							</div>
							<div style="width: 12%; text-align: center;">
								<input onkeydown="if (event.keyCode == 13) acc_amount.focus();" type="text" id="acc_occdate"/>
							</div>
							<div style="width: 14%; text-align: center;">
								<input onkeydown="if (event.keyCode == 13) acc_location.focus();" type="text" id="acc_amount"/>
							</div>
							<div style="width: 10%; text-align: center;">
								<input onkeydown="if (event.keyCode == 13) acc_note.focus();" type="text" id="acc_location"/>
							</div>
							<div style="width: 51%; text-align: center;">
								<input onkeydown="submitkey();" type="text" id="acc_note"/>
							</div>
						</div>
						
					</div>
					<script>
					// 회계 데이터 입력
					function submitkey() {
		
					        if (window.event.keyCode == 13) {
					 			var acc_payment 	= $('#acc_payment').val();
					 			var acc_ctg 			= $('#acc_ctg').val();
					 			var acc_occdate 	= $('#acc_occdate').val();
					 			var acc_amount 	= $('#acc_amount').val();
					 			var acc_location		= $('#acc_location').val();
					 			var acc_note 			= $('#acc_note').val();
					 			
					 			alert(acc_payment);
					 			alert(acc_ctg);
					 			alert(acc_occdate);
					 			alert(acc_amount);
					 			alert(acc_location);
					 			alert(acc_note);
					 			
					 			$.ajax({
					 				url: "./addAccAction",
					 				type: 'POST',
					 				data:{
					 					acc_payment 	: acc_payment,
					 					acc_ctg 			: acc_ctg,
					 					acc_occdate 	: acc_occdate,
					 					acc_amount 	: acc_amount,
					 					acc_location 	: acc_location,
					 					acc_note 		: acc_note
					 				},
					 				dataType: 'text',
					 				success:function(){
					 					alert('성공');
							 			$('#acc_payment').val('');
							 			$('#acc_ctg').val('');
							 			$('#acc_occdate').val('');
							 			$('#acc_amount').val('');
							 			$('#acc_location').val('');
							 			$('#acc_note').val('');
					 				},
					 				error:function(){
					 					alert('error');
					 				}
					 			});
					            
					        }
					}
				</script>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>