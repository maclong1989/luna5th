<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Jquery Mobile Test</title>
	
	<link rel="stylesheet" href="<%=basePath%>/plugIn/jquery.mobile-1.4.5/jquery.mobile-1.4.5.css">
	<script src="<%=basePath%>/js/jquery-1.12.4.js" type="text/javascript"></script>
	<script src="<%=basePath%>/plugIn/jquery.mobile-1.4.5/jquery.mobile-1.4.5.js" type="text/javascript"></script>
	
	
	
</head>
<body>
	<section data-role="page" id="firstView">
		<div data-role="header">
			<a data-role="back">后退</a>
			<a data-role="forward">前进</a>
			<h1>页头</h1>
		</div>
		<div data-role="content">
			内容1
			<a href="#secondView" data-rel="dialog" data-transition="pop">切换到第二个</a>
			<input type="button" value="test"/>
			<a data-role="button" href="#secondView" data-icon="plus" data-rel="dialog" data-transition="pop">切换到第二个</a>
			<a data-role="button" data-icon="plus" data-iconpos="notext">按钮</a>
			<a data-role="button" data-icon="plus" data-inline="true" data-theme="b">按钮</a>
			<div data-role="controlgroup">
				<a data-role="button" data-icon="plus" data-iconpos="top">按钮1</a>
				<a data-role="button" data-icon="plus" data-iconpos="top">按钮2</a>
				<a data-role="button" data-icon="plus" data-iconpos="top">按钮3</a>
			</div>
			<div data-role="controlgroup" data-type="horizontal">
				<a data-role="button" data-icon="plus">按钮</a>
				<a data-role="button" data-icon="plus">按钮</a>
				<a data-role="button" data-icon="plus">按钮</a>
			</div>
		</div>
		<div data-role="footer" align="center">
			<a href="#" data-role="button" data-icon="delete">删除</a>
			<a href="#" data-role="button" data-icon="plus">添加</a>
		</div>
		<div data-role="footer" align="center">
			<div data-role="controlgroup" data-type="horizontal">
				<a href="#" data-role="button" data-icon="delete">删除</a>
				<a href="#" data-role="button" data-icon="plus">添加</a>
			</div>
		</div>
	</section>
	<section data-role="page" id="secondView" class=“ui-bar”>
		<div data-role="header">
			<a data-rel="back">后退</a>
			<a data-role="forward">前进</a>
			<h1>页头2</h1>
		</div>
		<div data-role="content">内容2<a href="#firstView" data-transition="slide">切换到第一个</a></div>
		<div data-role="footer">页脚</div>
	</section>
</body>
</html>