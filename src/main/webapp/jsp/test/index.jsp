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
		$('#textPage').addClass('active');
  	});
  
  </script>
  
  <body>
  	<div style="width:1024px;margin:0 auto;">
		<%@ include file="/jsp/common/title.jsp"%>
  		<a href="test1.jsp" class="btn btn-primary">原始按钮</a> 
  		<a href="test2.jsp" class="btn btn-primary">原始按钮</a> 
  	</div>
  </body>
</html>
