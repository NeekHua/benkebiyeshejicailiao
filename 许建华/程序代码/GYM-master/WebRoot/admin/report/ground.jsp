<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<t齐齐哈尔大学地收入报表 - 齐齐哈尔大学体育馆网上系统后台</title>
<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<script src="../js/nav.js" type="text/javascript"></script>
<script src="../js/focus.js" type="text/javascript"></script>
<link href="../css/common.css" rel="stylesheet" type="text/css" />
<link href="../css/report.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%@ include file="../include/header.jsp"%>
<div id="main">
<div id="row_1">
  <table class="ground-book-list" cellspacing="2px">
    <tr>
      <th scope="col">编号</th>
      <th scope="col">支出</th>
      <th scope="col">收入</th>
      <th scope="col">日期</th>
      <th scope="col">备注</th>
    </tr>
    <c:forEach items="${requestScope.reportList}" var="list">
      <tr>
        <td>${list.fId}</td>
        <td>${list.fOut}</td>
        <td>${list.fIn}</td>
        <td>${list.date}</td>
        <td>${list.notes}</td>
      </tr>
    </c:forEach>
  </table>
</div>
<script>
	var def = "7";
</script>
<%@ include file="../include/footer.jsp"%>
</body>
</html>
