<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>luna5th Project</title>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap-theme.css">
    

  </head>
  
  <script type="text/javascript">
	$(document).ready(function(){
		$('#homePage').addClass('active');
  	});
  
  
  </script>
  
  <body>
  	<div style="width:1280px;margin:0 auto;">
  		<%@ include file="/jsp/common/title.jsp"%>
  	</div>
  </body>
</html>
