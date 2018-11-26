<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>齐齐哈尔大学体育馆管理系统</title>
<link href="css/nav.css" rel="stylesheet" type="text/css" />
<script src="js/nav.js" type="text/javascript"></script>
<script src="js/focus.js" type="text/javascript"></script>
<link href="css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="include/header.jsp"%>
	<div id="main">
		<div id="row_1">
			<div id="slide">
				<img src="images/login_banner.jpg" alt="" />
			</div>
			<div id="match">
				<div class="column">最新赛事</div>
				<div class="content">
					<ul>
						<c:forEach items="${requestScope.matchList}" var="list">
							<li>
							<span class="title"><a href="match/index.html?mid=${list.mId }">${list.mName}</a> </span> 
							<span class="time">${fn:substring(list.mDate, 0, 10)}</li>
						</c:forEach>
				
					</ul>
					
				</div>
			</div>
			<div class="clear"></div>
			<div id="sports-icon">
				<img src="images/icon.jpg" />
			</div>
		</div>
	</div>
	<script>
		var def = "1";
	</script>
	<%@ include file="include/footer.jsp"%>
</body>

</html>
