<%--
  /**
  * Class Name :  0724
  * Description : 
  * Modification Information
  *
  *   수정일                   수정자                      수정내용
  *  -------    --------    ---------------------------
  *  2020. 5. 6.            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.01.06
  *
  * Copyright (C) 2009 by KandJang  All right reserved.
  */
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- form 속성 테그라이브러리 디렉티브 추가   -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="hContext" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">

em.error {
     color:#7571f9; 
     font:100% arial,helvetica,clean,sans-serif;
     font-size:10px;
     font-weight:bold;  
    }
</style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Board WEB</title>
<!-- Favicon icon -->
<link rel="icon" type="${hContext}/views/image/png" sizes="16x16"
	href="${hContext}/views/images/favicon.png">
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"> -->
<link href="${hContext}/views/css/style.css" rel="stylesheet">
</head>

<body class="h-100">

	<!--*********************************************************************
        Preloader start  			< LoginController 타고 내려온 login.jsp >
    *******************************************************************-->
	<div id="preloader">
		<div class="loader">
			<svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
		</div>
	</div>
	<!--*********************************************************************
        Preloader end
       ********************-->
	<div>
		<br /> <br />
		<!--*******************************************  
		  Tiles header
		 *********************************************-->
		<br /> <br />
	</div>

	<!-- Sign Up -->
	<section class="hero-wrap js-fullheight">
		<!-- 파란배경 -->
		<div class="overlay"></div>
		<div class="container-fluid px-md-5">
			<div class="row justify-content-center py-5 mt-5">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<h2 class="mb-4">회원 가입</h2>
					<div align="center">
						<form:form commandName="signup" id="signUp_form" method="get" class="mt-5 mb-5 login-input" name="signUp_form">
							<table>
								<tbody>
									<tr>
										<td><input type="text" class="form-control userId" name="userId" id="userId" placeholder="Id" autofocus>
										</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control nickName" name="nickName" id="nickName" placeholder="Your Nickname">
										</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control userName" name="userName" id="userName" placeholder="Your UserName">
										</td>
									</tr>
									<tr>
										<td><input type="password" class="form-control passwd" name="passwd" id="passwd" placeholder="Password"></td>
									</tr>
									<tr>
										<td><input type="password" class="form-control passwd" name="passwdConfirm" id="passwdConfirm" placeholder="Confirm Password"></td>
									</tr>
									<tr>
										<td>
										<input type="email" class="form-control email" name="email" id="email" placeholder="Email">
										</td>
									</tr>
									<tr>
										<td>Phone : <select name="phone1" id="phone1">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="019">019</option>
										</select> - <input type="text" name="phone2" id="phone2" size="5" maxlength="4"> - <input type="text" name="phone3" id="phone3" size="5" maxlength="4"><br>
										</td>
									</tr>
									<tr>
										<td>
										<input type="text" class="form-control addr" name="addr" id="addr" placeholder="주소 " readonly="readonly" style="display:inline-block"/>
										<input type="text" class="form-control addr" name="addr_detail" id="addr_detail" placeholder="상세주소 "  style="display:inline-block"/>
										<input type="hidden" onclick="javascript:doRetrieve();" class="col-lg-3 col-sm-3 col-xs-3 btn btn-primary btn-lg" value="조회하기" " >
										<input type="button" onclick="searchKakaoAddress();" class="col-lg-3 col-sm-3 col-xs-3 btn btn-primary btn-lg" value="주소검색" />
									    </td>
									</tr>
									<tr>
										<td>
											<button type="submit" class="btn login-form__btn submit w-100" id="doInsertBtn">회원가입</button>
										</td>
									</tr>
								</tbody>
							</table>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!--**********************************
        Scripts
    ***********************************-->
	<script src="${hContext}/views/plugins/common/common.min.js"></script>
	<script src="${hContext}/views/js/custom.min.js"></script>
	<script src="${hContext}/views/js/settings.js"></script>
	<script src="${hContext}/views/js/gleek.js"></script>
	<script src="${hContext}/views/js/styleSwitcher.js"></script>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="${hContext}/views/js/jquery-migrate-1.4.1.js"></script>
	<!-- jQuery validator -->
	<script src="${hContext}/views/js/jquery.validate.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="${hContext}/views/js/bootstrap.min.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=639b35f7e3646b98692013b4830ce2da&libraries=services"></script>
	</script>

	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<!-- devU01TX0FVVEgyMDIwMDcyNDA4NDIxOTEwOTk4NzQ= -->
	<script type="text/javascript">
		// 주소 검색 
		function searchKakaoAddress(){
	    console.log("----- 주소 검색 시작 -----");
		    new daum.Postcode({
	            oncomplete: function(data) {
	            	console.log("searching result",data);
	            	console.log("searching result"+data);
	            	
	                var addr = data.address; // 최종 주소 변수
	
	                // 주소 정보를 해당 필드에 넣는다.
	                document.getElementById("addr").value = addr;
	           	
	            }
	        }).open();
	   
	}
	
	
/* 		function signUp() {
			//console.log("doRetrieve()");
			var frm = document.signUp_frm;
			frm.action = "${hContext}/member/resgister.do";
			frm.submit();
		} */
	
	

		function bindEventHandler() {
			$("#signUp_form")
					.validate(
							{
								onfocus : true,
								//서버전송여부
								debug : false,

								rules : {
									userId : {
										//필수값
										required : true,
										//최소길이
										minlength : 3
									},
									nickName : {
										//필수값
										required : true,
										//최소길이
										minlength : 3
									},
									userName : {
										//필수값
										required : true,
										//최소길이
										minlength : 2
									},
									passwd : {
										//필수값
										required : true,
										//범위
										rangelength : [ 4, 12 ]
									},
									passwdConfirm : {
										//필수값
										required : true,
										//범위
										rangelength : [ 4, 12 ],

										equalTo : "#passwd"
									},
									email : {
										//필수값
										required : true,
										//이메일형식
										email : true
									},
									phone2 : {
										//필수값
										required : true,
										//최소길이
										minlength : 4
									},
									phone3 : {
										//필수값
										required : true,
										//최소길이
										minlength : 4
									}

								},
								messages : {
									//message
									userId : {
										//필수값 
										required : "&nbsp;아이디는 필수값 입니다.",
										//최소길이
										minlength : $.validator.format('{0}자 이상 입력하세요.')
									},
									nickName : {
										//필수값 
										required : "&nbsp;닉네임은 필수값 입니다.",
										//최소길이
										minlength : $.validator.format('{0}자 이상 입력하세요.')
									},
									userName : {
										//필수값 
										required : "&nbsp;닉네임은 필수값 입니다.",
										//최소길이
										minlength : $.validator.format('{0}자 이상 입력하세요.')
									},
									passwd : {
										//필수값 
										required : "&nbsp;비밀번호는 필수값 입니다.",
										//최소길이
										rangelength : $.validator.format('비밀번호는 {0}이상~{1}이하로 입력하세요.')
									},
									passwdConfirm : {
										//필수값 
										required : "&nbsp;비밀번호확인을 입력하세요.",
										//최소길이
										rangelength : $.validator.format('비밀번호확인는 {0}이상~{1}이하로 입력하세요.'),
										//pass==confirm_pass 
										equalTo : "비밀번호 항목과 일치하지 않습니다."
									},
									email : {
										//필수값
										required : "&nbsp;이메일은 필수값 입니다.",
										//이메일형식
										email : "올바른 이메일 형식이 아닙니다."
									},
									phone2 : {
										//필수값 
										required : "&nbsp;전화번호는 필수값 입니다.",
										//최소길이
										minlength : $.validator.format('{0}자 이상 입력하세요.')
									},
									phone3 : {
										//필수값 
										required : "&nbsp;전화번호는 필수값 입니다.",
										//최소길이
										minlength : $.validator.format('{0}자 이상 입력하세요.')
									}
								},
								errorElement : "em",
								errorPlacement : function(error, element) {
									// Add the `help-block` class to the error element
									error.addClass("help-block");

									if (element.prop("type") === "checkbox") {
										error.insertAfter(element
												.parent("label"));
									} else {
										error.insertAfter(element);
									}
								},
								highlight : function(element, errorClass,
										validClass) {
									$(element).parents(".col-lg-5").addClass(
											"has-error").removeClass(
											"has-success");
								},
								unhighlight : function(element, errorClass,
										validClass) {
									$(element).parents(".col-lg-5").addClass(
											"has-success").removeClass(
											"has-error");
								},
								//서밋 헨들러
								submitHandler : function(form) {

									//ajax
									$.ajax({
												type : "GET",
												url : "${hContext}/member/resgister.do",
												dataType : "html",
												data : {
													"userId" : $("#userId").val(),
													"nickName" : $("#nickName").val(),
													"userName" : $("#userName").val(),
													"passwd" : $("#passwd").val(),
													"email" : $("#email").val(),
													"phone" : $("#phone1").val()+ $("#phone2").val()+ $("#phone3").val(),
													"addr" : $("#addr").val()+' '+$("#addr_detail").val()
												},
												success : function(data) { //성공
													console.log("data:",data);
													
													var data01 = data.nickName;
													console.log("data",data01);
													
													var parseData = $.parseJSON(data);
													console.log(parseData);
													console.log(parseData.nickName);
													
													goLoginPage();
												/* 	var parseData = $.parseJSON(data);
													if (parseData.msgId == "1") {
														alert(parseData.msgMsg);
													} else {
														alert(parseData.msgMsg);
													} */

												},
												error : function(xhr, status,error) {
													alert("error:" + error);
												},
												complete : function(data) {

												}
											});//--ajax 

								}
							});

		}

		function goLoginPage() {
			alert('회원가입 되었습니다. 로그인해주세요.');
			//location.href = "/WEB-INF/jsp/egovframework/example/login/login.jsp";
			/**   <TODO>
					1) login.do는 json 으로 return 되서 바로 붙지 못함 -> 게시판으로 일단 이동
					2) session 
			*/
			  location.href = "${hContext}/board/do_retrieve.do";
		};

		$(document).ready(function() {
			//input validation
			bindEventHandler();

		});
	</script>

</body>
</html>