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
<title>器材租借 - 齐齐哈尔大学体育馆网上系统</title>
<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<script src="../js/nav.js" type="text/javascript"></script>
<script src="../js/focus.js" type="text/javascript"></script>
<script src="../js/timepicker.js" type="text/javascript"></script>
<link href="../css/common.css" rel="stylesheet" type="text/css" />
<link href="../css/equipment.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="../include/header.jsp"%>
	<div id="main">
		<div id="row_1">
			<div id="rent-submit">
				<form action="index.html" method="post">
					<p>
						编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号 <input name="eid"
							type="text"
							value="<%out.print(request.getAttribute("equipmentId"));%>"
							class="input-box" readonly="readonly" />
					</p>
					<p>
						类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型 <input name="type"
							type="text"
							value="<%out.print(request.getAttribute("equipmentTypeName"));%>"
							class="input-box" readonly="readonly" />
					</p>
					<p>
						单&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价 <input name="fee"
							type="text"
							value="<%out.print(request.getAttribute("equipmentFee"));%>"
							class="input-box" readonly="readonly" />
					</p>
					<p>
						起始时间 <input name="begin" type="text" onClick="setDayHM(this);"
							class="input-box" />
					</p>
					<p>
						终止时间 <input name="end" type="text" onClick="setDayHM(this);"
							class="input-box" />
					</p>
					<br />
					<p>
						<input name="action" type="hidden" value="rent" /> <input name=""
							type="submit" value="提交订单" class="btn-submit" />
					</p>
				</form>
			</div>
		</div>
	</div>
	<script>
		var def = "4";
	</script>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
