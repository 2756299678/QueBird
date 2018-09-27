<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String account = request.getParameter("account");
	String name = request.getParameter("name");
	String password = request.getParameter("password2");
	String sex = request.getParameter("sex");
	String age = request.getParameter("age");
	
	if(sex.equals("female")){
		sex = "女";
	}
	else{
		sex = "男";
	}

	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/stationdata";
	String username = "root";
	String pw = "20153178";
	Connection con = DriverManager.getConnection(url,username,pw);
	
	String sql = "insert into userslist values(?,?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, account);
	pstmt.setString(3, password);
	pstmt.setString(4, age);
	pstmt.setString(5, sex);
	pstmt.setString(6, "");
	pstmt.setString(7, "");
	pstmt.execute();
	
	pstmt.close();
	con.close();
	
	%>
    <script>window.alert('注册成功！')</script>
 	<%
 	response.setHeader("Refresh", "0;login.jsp");
%>