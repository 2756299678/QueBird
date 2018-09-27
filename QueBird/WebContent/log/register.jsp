<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成为鹊谷居民的第一步</title>
</head>
<style>
   p {font-family:微软雅黑;color:#FFFFFF}
</style>
<body>
<form name="form1" method="post" action="register_do.jsp">
<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/login_2.png"><table width="650" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="325" height="50"><div align="center">
          <p align="right">账号（使用手机号）：</p>
        </div></td>
        <td>
            <div align="center">
              <input type="text" name="account">
              </div></td>
      </tr>
      <tr>
        <td height="50"><div align="center">
          <p align="right">用户名：</p>
        </div></td>
        <td>
          <div align="center">
            <input type="text" name="name">
            </div></td>
      </tr>
      <tr>
        <td height="50"><div align="center">
          <p align="right">新密码：</p>
        </div></td>
        <td>
          <div align="center">
            <input type="password" name="password1">
            </div></td>
      </tr>
      <tr>
        <td height="50"><div align="center">
          <p align="right">确认密码：</p>
        </div></td>
        <td>
          <div align="center">
            <input type="password" name="password2">
            </div></td>
      </tr>
      <tr>
        <td height="50"><div align="center">
          <p align="right">性别：</p>
        </div></td>
        <td>
            <p align="center"><input type="radio" name="sex" value="male">
            男<input type="radio" name="sex" value="female">
          女</p>
        </td>
      </tr>
      <tr>
        <td height="50"><div align="center">
          <p align="right">年龄：</p>
        </div></td>
        <td>
          <div align="center">
            <input type="text" name="age">
            </div></td>
      </tr>
      <tr>
        <td height="50" colspan="2"><div align="center">
              <input type="submit" name="Submit" value="提交">
          </div></td>
        </tr>
    </table></td>
    <td width="650"><img src="images/login_1.png" width="650" height="740"></td>
  </tr>
</table>
</form>
</body>
</html>