<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!-- JSP指令 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	
    This is my JSP page. 成功!<br>
    ${user.username }<br />
    session:<%=session.getAttribute("username") %> <br />
    session:${sessionScope.username } <br />
    session1:<%=session.getAttribute("username1") %> <br />
    session1:${sessionScope.username1 } <br />    
    session2:<%=session.getAttribute("username2") %> <br />
    session2:${sessionScope.username2 } <br />      
    <c:set var="t" value="a" ></c:set>
    <c:if test="${t=='a'}">
    	<c:out value="t==a"/>
    	<p>${t}</p>
    </c:if>
    <c:if test="${t!='a'}">
    	<c:out value="t!=a"/>
    	<p>agaf</p>
    </c:if>
    <select>    	
	    <c:forEach var="a" items="1,2,3,4,5,2,3,4">
	    	<option><c:out value="${a}"></c:out></option>
	    </c:forEach>
    </select>
    <a href="StaffAdd.jsp">StaffAdd</a>

  </body>
</html>
