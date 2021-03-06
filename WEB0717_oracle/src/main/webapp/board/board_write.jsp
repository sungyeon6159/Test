<%--
  /**
  * Class Name : 
  * Description : bootstrap list 템플릿
  * Modification Information
  *
  *   수정일                   수정자                      수정내용
  *  -------    --------    ---------------------------
  *  2020. 3. 9.            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.01.06
  *
  * Copyright (C) 2009 by KandJang  All right reserved.
  */
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/common/common.jsp"%>
      
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>부트스트랩 HR_LIST 등록</title>

    <!-- 부트스트랩 -->  
    <link href="${hContext}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>
   <!-- div container -->
   <div class="container">
      <!-- div title --> 
      <div class="page-header">
        <h2>게시판 등록</h2>
      </div>
      <!--// div title -->
        <div class="row text-right">
		    <label for="title" class="col-lg-2 col-md-2 col-sm-2 col-xs-2 control-label"></label>
		    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
				<input  type="button" class="btn btn-primary btn-sm" onclick="goRetrieve();"  value="목록" id="list_btn" />
				<input  type="button" class="btn btn-primary btn-sm" value="등록" id="insert_btn" />
			</div>
		</div>
      <!-- div title -->
      <form class="form-horizontal"  action="${hContext}/board/do_retrieve.do"
       name="mngFrm" id="mngFrm"
      method="post" >
          
          <div class="form-group">	      
	      <label for="title" class="col-lg-2 col-md-2 col-sm-2 col-xs-2 control-label">제목</label>
		      <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
		      	<input type="text" class="form-control" id="title" name="title" placeholder="제목"
		      	 value="${vo.title }">
		      </div>
	      </div>
	      
          
	     <div class="form-group">
	       <label for="contents" class="col-sm-2 control-label">내용</label>
	       <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
	         <textarea class="form-control" name="contents" id="contents" rows="5" 
	         placeholder="내용">${vo.contents}</textarea>
	       </div>
	     </div> 
         <div class="form-group">
          <label for="regId" class="col-lg-2 col-md-2 col-sm-2 col-xs-2 control-label">등록자</label>
              <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                <input type="text" class="form-control" id="regId" name="regId" placeholder="등록자"
                 value="${vo.regId }">
              </div>
         </div>
           
   </form>
 </div>     
 <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
     <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="${hContext}/resources/js/jquery-migrate-1.4.1.js"></script>
    <!-- jQuery validator -->
    <script src="${hContext}/resources/js/jquery.validate.js"></script>    
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="${hContext}/resources/js/bootstrap.min.js"> </script>
    <script type="text/javascript">
    
        function goRetrieve(){
        	location.href="${hContext}/board/do_retrieve.do?pageNum=1&pageSize=10&searchDiv=&searchWord=";
        }

        $("#insert_btn").on("click",function(){

        	$("#mngFrm").valid()
        	
            if(false==confirm("등록 하시겠습니까?"))return;

            $.ajax({
                       type:"POST",
                       url:"${hContext}/board/do_insert.do",
                       dataType:"html", 
                       data:{
                                "title":title,
                                "contents":contents,
                                "regId":regId
                            },
                       success:function(data){ //성공
                        //alert(data);
                        //{"msgId":"1","msgMsg":"삭제 되었습니다.","num":0,"totalCnt":0}
                        var jData = JSON.parse(data);
                        if(null !=jData && jData.msgId=="1"){
                            alert(jData.msgMsg);
                            //목록화면으로 이동
                            goRetrieve();
                        }else{
                            alert(jData.msgMsg);
                            
                        }
                   
                   },
                   error:function(xhr,status,error){
                       alert("error:"+error);
                   },
                   complete:function(data){
                   
                   }   
                   
           });//--ajax
            

               
        	
        });
        
        
        $("#delete_btn").on("click",function(){
            console.log("delete_btn");
            var boardId = $("#boardId").val().trim();
            console.log("boardId:"+boardId);

            if(false==confirm("삭제 하시겠습니까?"))return;

            $.ajax({
	            	   type:"POST",
	            	   url:"${hContext}/board/do_delete.do",
	            	   dataType:"html", 
	            	   data:{"boardId":boardId  },
            	   success:function(data){ //성공
            		    //alert(data);
            		    //{"msgId":"1","msgMsg":"삭제 되었습니다.","num":0,"totalCnt":0}
            		    var jData = JSON.parse(data);
            		    if(null !=jData && jData.msgId=="1"){
            		        alert(jData.msgMsg);
            		        //목록화면으로 이동
            		        goRetrieve();
                		}else{
                			alert(jData.msgMsg);
                			
                    	}
            	   
            	   },
            	   error:function(xhr,status,error){
            		   alert("error:"+error);
            	   },
            	   complete:function(data){
            	   
            	   }   
            	   
           });//--ajax
        });


        function bindEventHandler(){
            $("#mngFrm").validate({
                onfocus: false,
                //서버전송여부
                debug: true,
                 
                rules: {
                    title:{
                       //필수값
                       required: true,
                       //최소길이
                       minlength: 2,
                       //최대길이
                       maxlength: "100"
                    },
                    contents:{
                        //필수값
                        required: true,
                        //최소길이
                        minlength: 2
                     }                     

                },messages: {
                    //message
                    title:{
                       //필수값 
                       required: "제목은 필수값 입니다.",
                       //최소길이
                       minlength: $.validator.format('{0}자 이상 입력하세요.'),
                       //최대길이
                       maxlength: $.validator.format('{0}자 내로 입력하세요.')
                       
                    }, contents:{
                        //필수값 
                        required: "제목은 필수값 입니다.",
                        //최소길이
                        minlength: $.validator.format('{0}자 이상 입력하세요.')
                        
                     }    

                },errorPlacement:function(error,element){
                    //doNothing
                },invalidHandler:function(form,validator){
                    //alert
                    var errors = validator.numberOfInvalids();
                    console.log("errors:"+errors);
                    if(errors){
                        console.log("validator.errorList[0].message:"+validator.errorList[0].message);    
                        alert(validator.errorList[0].message);
                        validator.errorList[0].element.focus();
                    }

                }


         });

        }
                
        $(document).ready(function(){
            //input validation
            bindEventHandler();
               
        });        
    </script>    
    
  </body>
</html>


















