<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>DB Connection Test</title>
</head>
<body>
	<%
	String DB_URL = "jdbc:mysql://172.17.0.6:3306/bartdb";
	String DB_USER = "bartsh";
	String DB_PASSWORD= "sh73031148@";
	Connection conn=null;
	Statement stmt=null;
	String sql = "SELECT * FROM user_info;";

	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			out.println(rs.getString(1) + ", " + rs.getString(2) + "<br/>");
		}
		rs.close();
		stmt.close();
		conn.close();
		out.println("DB연동 성공입니다!!");
	} catch(Exception e) {
		out.println(e.getMessage());
	}
	%>
</body>
</html>
