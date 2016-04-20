<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function imgfun(img){
			//alert("ok");
			img.src="CheckCodeAction.action?date="+new Date();
		}
	</script>
  </head>
  
  <body>
  	<c:out value=""></c:out>
  	
    This is my JSP page. <br>
    <form action="LoginAction!login.action" method="post" >
    	账号<input type="text" name="user.username" value="admin"><br/>
    	密码<input type="password" name="user.password" value="admin"><br />
    	验证<input type="text" name="checkcode"><img src="CheckCodeAction.action" onclick="imgfun(this)"/><br />
    	<input type="submit"><br />
    	${result}
    </form><br />
    <a href="success.jsp" >相对 success</a>
    <a href="/AF1509Struts/success.jsp" >根路径success</a>
    <a href="http://localhost:8080/AF1509Struts/success.jsp" >绝对success</a>
    
    <s:form action="LoginAction!login.action" method="post" theme="simple">
    	
    	<s:textfield name="user.username" value="admin"></s:textfield>
    	密码<s:password  name="user.password" value="admin"></s:password>
    	验证<input type="text" name="checkcode"><img src="CheckCodeAction.action" onclick="imgfun(this)"/><br />
    	<input type="submit"><br />
    	${result}    
    </s:form>
	<%
		session.setAttribute("sex", "F");
	 %>    
    <s:radio list="#{'M':'男','F':'女' }" value="#session.sex"></s:radio>

    <s:property  value="#session.sex"></s:property>
  </body>
</html>
