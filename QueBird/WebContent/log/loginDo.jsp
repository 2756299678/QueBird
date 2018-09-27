<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/stationdata";
	String username = "root";
	String pw = "20153178";
	Connection con = DriverManager.getConnection(url,username,pw);
	
	String sql = "select password from userslist where account=" + id;
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	String pw2 = null;
	while(rs.next()){
	   pw2 = rs.getString("password");
	}
	
	if(pw2 == null){
		   %>
		   <script>window.alert('空号，请重新登录！');</script>
		   <%
		   response.setHeader("Refresh", "0;login.jsp");
	}
	else if(!(pw2.equals(password))){
		   %>
		   <script>window.alert('密码不正确，请重新登录！');</script>
		   <%
		   response.setHeader("Refresh", "0;login.jsp");
	}
	else{
		%>
		   <script>window.alert('登录成功！');</script>
		   <%
		   response.setHeader("Refresh", "0;login.jsp");
	}
%>