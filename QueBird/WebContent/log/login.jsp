<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>鹊谷登录</title>
</head>
<style>
   p {font-family:微软雅黑;color:#FFFFFF}
   a {font-family:微软雅黑;color:#FFFFFF}
</style>
<body>
<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="650" height="270" background="images/login_2_1.png">&nbsp;</td>
    <td width="650" rowspan="3"><img src="images/login_1.png" width="650" height="740"></td>
  </tr>
  <tr>
    <td width="650" height="200" background="images/login_2_2.png">
	<form name="form1" method="post" action="loginDo.jsp">
	<table width="650" height="120" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><div align="center">
            <p>账户：<input type="text" name="id"></p>
          </div></td>
      </tr>
      <tr>
        <td><div align="center">
          <p>密码：<input type="text" name="password"></p>
        </div></td>
      </tr>
      <tr>
        <td><div align="center">
            <input type="submit" name="login" value="登录">
            <a href="register.jsp">注册</a>
        </div></td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
  <tr>
    <td background="images/login_2_3.png">&nbsp;</td>
  </tr>
</table>
</body>
</html>