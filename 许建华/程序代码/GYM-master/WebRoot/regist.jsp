<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
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
<title>注册 -齐齐哈尔大学学体育馆网上系统</title>
<link href="css/nav.css" rel="stylesheet" type="text/css" />
<script src="js/nav.js" type="text/javascript"></script>
<script src="js/focus.js" type="text/javascript"></script>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/account.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%@ include file="include/header.jsp"%>
	<div id="main">
		<div id="row_1">
			<div id="reg_banner">
				<img src="images/login_banner.jpg" />
			</div>
			<div id="reg_div">
				<form action="regist.html" method="post">
					校园卡号： <input name="uid" type="text" class="input_text" /> * <br />
					姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名： <input name="name"
						type="text" class="input_text" /> * <br />
					密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码： <input name="password"
						type="password" class="input_text" /> * <br /> 确认密码： <input
						name="password2" type="password" class="input_text" /> * <br />
					邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱： <input name="email"
						type="text" class="input_text" /> * <br /> 手机号码： <input
						name="phone" type="text" class="input_text" /> * <br /> 身份证号： <input
						name="idcard" type="text" class="input_text" /> * <br /> <br />
					<br /> <input type="submit" value="注册" class="btn" /> <input
						type="reset" value="重置" class="btn" />
				</form>
			</div>
		</div>
	</div>
	<script>
		var def = "1";
	</script>
	<%@ include file="include/footer.jsp"%>
</body>
</html>
