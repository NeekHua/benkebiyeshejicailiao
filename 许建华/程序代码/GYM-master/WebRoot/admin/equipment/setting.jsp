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
<title>删除器材 - 齐齐哈尔大学体育馆网上系统后台</title>
<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<script src="../js/nav.js" type="text/javascript"></script>
<script src="../js/focus.js" type="text/javascript"></script>
<link href="../css/common.css" rel="stylesheet" type="text/css" />
<link href="../css/equipment.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%@ include file="../include/header.jsp"%>
<div id="main">
  <div id="row_1"> 
    <!-- <form action="" method="post" class="align-right">
      器材分类：
      <select name="">
        <option value="羽毛球拍">羽毛球拍</option>
        <option value="篮球">篮球</option>
      </select>
      &nbsp;&nbsp;
      器材编号：
      <input name="username" type="text" />
      &nbsp;&nbsp;
      器材名称：
      <input name="userid" type="text" />
      &nbsp;&nbsp;
      <input type="submit" value="查询" />
    </form>-->
    <table class="equipment-list" cellspacing="2px">
      <tr>
        <th scope="col">器材编号</th>
        <th scope="col">借出次数</th>
        <th scope="col">类型</th>
        <th scope="col">资费</th>
        <th scope="col">操作</th>
      </tr>
      <c:forEach items="${requestScope.equipmentList}" var = "list">
        <form action="index.html" method="post">
          <tr>
            <td>${list.eId}</td>
            <td>${list.borrowCount}</td>
            <td><select name="type">
                <option value="${list.eTypeId}">${list.eTypeName}</option>
                <c:forEach items="${requestScope.equipmentTypeList}" var = "typelist">
                  <option value="${typelist.eTypeId}">${typelist.eTypeName}</option>
                </c:forEach>
              </select></td>
            <td><input name="fee" type="text" value="${list.eFee}" />
              元/天</td>
            <td><input name="action" type="hidden" value="setting" />
              <input name="eid" type="hidden" value="${list.eId}" />
              <input name="submitsetting" type="submit" value="修改" /></td>
          </tr>
        </form>
      </c:forEach>
    </table>
  </div>
</div>
<script>
	var def = "5";
</script>
<%@ include file="../include/footer.jsp"%>
</body>
</html>
