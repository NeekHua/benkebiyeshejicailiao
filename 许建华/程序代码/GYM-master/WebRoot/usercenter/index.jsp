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
<title>个人中心 - 齐齐哈尔大学体育馆网上系统</title>
<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<script src="../js/nav.js" type="text/javascript"></script>
<script src="../js/focus.js" type="text/javascript"></script>
<link href="../css/common.css" rel="stylesheet" type="text/css" />
<link href="../css/usercenter.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%@ include file="../include/header.jsp"%>
<div id="main">
  <div id="row_1">
    <c:forEach items="${requestScope.userList}" var="list">
      <table id="user-info-list" cellspacing="2px">
        <tr>
          <th scope="row">校园卡号：</th>
          <td> ${list.uId} </td>
        </tr>
        <tr>
          <th scope="row">姓名：</th>
          <td> ${list.uName} </td>
        </tr>
        <tr>
          <th scope="row">邮箱：</th>
          <td> ${list.uEmail} </td>
        </tr>
        <tr>
          <th scope="row">手机号码：</th>
          <td> ${list.uPhone}</td>
        </tr>
      </table>
    </c:forEach>
  </div>
</div>
<script>
	var def = "5";
</script>
<%@ include file="../include/footer.jsp"%>
</body>
</html>
