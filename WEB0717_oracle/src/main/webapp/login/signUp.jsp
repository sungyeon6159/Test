<%--
  /**
  * Class Name : 
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- form 속성 테그라이브러리 디렉티브 추가   -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="hContext" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="en">

<head>
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
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.jsp"><span>B</span>ombom</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="#home-section" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="#signup-section" class="nav-link"><span>SignUp</span></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  
	<div>
		<br/>
		<br/>
		<br/>
		<br/>
	</div>  
	
	<section class="hero-wrap js-fullheight">
      <div class="overlay"></div>
	<!-- Sign Up -->
		<section class="ftco-about img ftco-section ftco-no-pt ftco-no-pb" id="signup-section">
			<div class="container-fluid px-md-5">
	    		<div class="row justify-content-center py-5 mt-5">
	          		<div class="col-md-12 heading-section text-center ftco-animate">
	           			 <h2 class="mb-4">User Sign Up</h2>
	           			 <div align="center">
	           			 <form:form commandName="searchVO" id="signUp_form" method="get"
									class="mt-5 mb-5 login-input" name="signUp_form">
							<table>
	                        <tbody>
	                        	<tr>
	                        		<td>
		                            <input  type="text" class="form-control userId" name="userId" id="userId" placeholder="Id"   autofocus>
		                        	</td>
		                        </tr>
		                        <tr>
	                        		<td>
		                            <input  type="text" class="form-control nickName" name="nickName" id="nickName" placeholder="Your Nickname" >
		                        	</td>
		                        </tr>
		                         <tr>
	                        		<td>
		                            <input  type="text" class="form-control userName" name="userName" id="userName" placeholder="Your UserName" >
		                        	</td>
		                        </tr>
		                        <tr>
	                        		<td>
		                            <input type="password" class="form-control passwd" name="passwd" id="passwd" placeholder="Password">
		                       	 	</td>
		                        </tr>
		                        <tr>
	                        		<td>
		                            <input type="password" class="form-control passwd" name="passwdConfirm" id="passwdConfirm" placeholder="Confirm Password" >
		                        	</td>
		                        </tr>
		                        <tr>
	                        		<td>
                            		<input type="text" class="form-control mobile" name="mobile" id="mobile" placeholder="Your Phone" >
                        			</td>
		                        </tr>
                        		<tr>
	                        		<td>
                           			<input type="email" class="form-control email" name="email" id="email" placeholder="Email" >
                        			</td>
		                        </tr>
                        		<tr>
	                        		<td>
		                        		Phone : <select name="phone1" id="phone1">
									       <option value="010">010</option>
									       <option value="011">011</option>
									       <option value="016">016</option>
									       <option value="017">017</option>
									       <option value="019">019</option>
									     </select>
									     - <input type="text" name="phone2" id="phone2" size="5" maxlength="4"> - <input type="text" name="phone3" id="phone3" size="5" maxlength="4"><br><br>
                        			</td>
		                        </tr>
		                        <tr>
	                        		<td>
		                            <button type="submit" class="form-control btn btn-danger btn-sm" id="doInsertBtn">Sign Up</button>
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
	</section>

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

	<!--**********************************
        Scripts
    ***********************************-->
	<script src="${hContext}/views/plugins/common/common.min.js"></script>
	<script src="${hContext}/views/js/custom.min.js"></script>
	<script src="${hContext}/views/js/settings.js"></script>
	<script src="${hContext}/views/js/gleek.js"></script>
	<script src="${hContext}/views/js/styleSwitcher.js"></script>
	
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

    <script type="text/javascript">
		function signUp() {
			//console.log("doRetrieve()");
			var frm = document.signUp_frm;
			frm.action = "${hContext}/member/signUp.spring";
			frm.submit();
		}
	
		 function bindEventHandler(){
	            $("#signUp_form").validate({
	                onfocus: true,
	                //서버전송여부
	                debug: false,
	                 
	                rules: {
	               	 memberId:{
	                       //필수값
	                       required: true,
	                       //최소길이
	                       minlength: 3
	                    },password:{
	                        //필수값
	                        required: true,
	                        //범위
	                        rangelength: [4,12]
	                    },passwordConfirm:{
	                        //필수값
	                        required: true,
	                        //범위
	                        rangelength: [4,12],

	                        equalTo:"#password"
	                    },email:{
	                        //필수값
	                        required: true,
	                        //이메일형식
	                        email: true
	                    },name:{
	                    	//필수값
	                        required: true,
	                        //최소길이
	                        minlength: 2
	                    },phone2:{
	                    	//필수값
	                        required: true,
	                        //최소길이
	                        minlength: 4
	                    },phone3:{
	                    	//필수값
	                        required: true,
	                        //최소길이
	                        minlength: 4
	                    }

	                },messages: {
	                    //message
	                    memberId:{
	                       //필수값 
	                       required: "&nbsp;아이디는 필수값 입니다.",
	                       //최소길이
	                       minlength: $.validator.format('{0}자 이상 입력하세요.')
	                    },password:{
	                        //필수값 
	                        required: "&nbsp;비밀번호는 필수값 입니다.",
	                        //최소길이
	                        rangelength: $.validator.format('비밀번호는 {0}이상~{1}이하로 입력하세요.')
	                    },passwordConfirm:{
	                         //필수값 
	                         required: "&nbsp;비밀번호확인을 입력하세요.",
	                         //최소길이
	                         rangelength: $.validator.format('비밀번호확인는 {0}이상~{1}이하로 입력하세요.'),
	                         //pass==confirm_pass 
	                         equalTo:"비밀번호 항목과 일치하지 않습니다."
	                    },email:{
	                        //필수값
	                        required: "&nbsp;이메일은 필수값 입니다.",
	                        //이메일형식
	                        email:  "올바른 이메일 형식이 아닙니다."
	                    },name:{
	                    	//필수값 
	                        required: "&nbsp;이름은 필수값 입니다.",
	                        //최소길이
	                        minlength: $.validator.format('{0}자 이상 입력하세요.')
	                    },phone2:{
	                    	//필수값 
	                        required: "&nbsp;전화번호는 필수값 입니다.",
	                        //최소길이
	                        minlength: $.validator.format('{0}자 이상 입력하세요.')
	                    },phone3:{
	                    	//필수값 
	                        required: "&nbsp;전화번호는 필수값 입니다.",
	                        //최소길이
	                        minlength: $.validator.format('{0}자 이상 입력하세요.')
	                    }
	                },errorElement: "em"
	                ,errorPlacement: function ( error, element ) {
	                    // Add the `help-block` class to the error element
	                    error.addClass( "help-block" );

	                    if ( element.prop( "type" ) === "checkbox" ) {
	                        error.insertAfter( element.parent( "label" ) );
	                    } else {
	                        error.insertAfter( element );
	                    }
	                },
	                highlight: function ( element, errorClass, validClass ) {
	                    $( element ).parents(".col-lg-5").addClass( "has-error" ).removeClass( "has-success" );
	                },
	                unhighlight: function (element, errorClass, validClass) {
	                    $( element ).parents(".col-lg-5").addClass( "has-success" ).removeClass( "has-error" );
	                },
					//서밋 헨들러
	                submitHandler:function(form){

	                	//ajax
	                    $.ajax({
	                        type : "GET",
	                        url : "${hContext}/portfolio/SignUp/doInsertMember.spring",
	                        dataType : "html",
	                        data : {
	                            "memberId" : $("#memberId").val(),
	                            "password" : $("#password").val(),
	                            "name" : $("#name").val(),
	                            "email" : $("#email").val(),
	                            "birth": $("#birth1").val()+"-"+$("#birth2").val()+"-"+$("#birth3").val(),
	                            "phone": $("#phone1").val()+$("#phone2").val()+$("#phone3").val(),
	                            "authority" : "1",
	                            "interestOption" : $("#interestPosition").val(),
	                            "open" : "1"
	                        },
	                        success : function(data) { //성공
	                        	goLoginPage();
	                            console.log("data:" + data);
	                            var parseData = $.parseJSON(data);
	                            if (parseData.msgId == "1") {
	                                alert(parseData.msgMsg);
	                            } else {
	                                alert(parseData.msgMsg);
	                            }
	                            

	                        },
	                        error : function(xhr, status, error) {
	                            alert("error:" + error);
	                        },
	                        complete : function(data) {

	                        }

	                    });//--ajax 
						
			        }
	         });

	       }
		
		//등록 --------------validation 전
	     /* $("#doInsertBtn").on("click", function() {
			//값 null check
			if ($("#memberId").val() == "" || $("#memberId").val() == false) {
                alert("아이디를 입력 하세요.");
                $("#memberId").focus();
                return false;
            }
			if ($("#password").val() == "" || $("#password").val() == false) {
                alert("패스워드를 입력 하세요.");
                $("#password").focus();
                return false;
            }
			if($("password") != $("passwordConfirm")){
		        alert("비밀번호가 서로 다릅니다. 비밀번호를 확인해 주세요."); 
		        $("#passwordConfirm").focus();
		        return; 
		    }
			if ($("#name").val() == "" || $("#name").val() == false) {
                alert("이름을 입력 하세요.");
                $("#name").focus();
                return false;
            }
			if ($("#email").val() == "" || $("#email").val() == false) {
                alert("이메일을 입력 하세요.");
                $("#email").focus();
                return false;
            }
			if ($("#birth1").val() == "" || $("#birth1").val() == false) {
                alert("생년월일을 입력 하세요.");
                $("#birth1").focus();
                return false;
            }
			//confirm
            if (confirm("등록 하시겠습니까?") == false)return false;
          //ajax
            $.ajax({
                type : "GET",
                url : "${hContext}/portfolio/SignUp/doInsertMember.spring",
                dataType : "html",
                async : false,
                data : {
                    "memberId" : $("#memberId").val(),
                    "password" : $("#password").val(),
                    "name" : $("#name").val(),
                    "email" : $("#email").val(),
                    "birth": $("#birth1").val()+"-"+$("#birth2").val()+"-"+$("#birth3").val(),
                    "phone": $("#phone1").val()+$("#phone2").val()+$("#phone3").val(),
                    "authority" : "1",
                    "interestOption" : $("#interestPosition").val(),
                    "open" : "1"
                },
                success : function(data) { //성공
                	goLoginPage();
                    console.log("data:" + data);
                    var parseData = $.parseJSON(data);
                    if (parseData.msgId == "1") {
                        alert(parseData.msgMsg);
                    } else {
                        alert(parseData.msgMsg);
                    }
                    

                },
                error : function(xhr, status, error) {
                    alert("error:" + error);
                },
                complete : function(data) {

                }

            });//--ajax 

        }); */

	   /*   $("#memberTable>tbody").on("click", "tr", function() {
			 //console.log("#memberTable>tbody");
			 var trArray =$(this).children();
			 var orgNm =  trArray.eq(0).text();
			 //console.log("orgNm:"+orgNm);
			 var saveNm =  trArray.eq(1).text();
			 //console.log("saveNm:"+saveNm);

			 var frm = document.fileDown;
			 frm.orgNm.value = orgNm;
			 frm.saveNm.value = saveNm;
			 frm.submit();
			 //$("#saveFileNm").val(saveFileNm);
			 
		}); */



		function goLoginPage(){
			alert('회원가입 되었습니다. 로그인해주세요.');
			location.href="${hContext}/portfolio/member/login.jsp";

			};

		
		$(document).ready(function(){
            //input validation
            bindEventHandler();
               
        });
		
	        
     </script>
    
</body>
</html>