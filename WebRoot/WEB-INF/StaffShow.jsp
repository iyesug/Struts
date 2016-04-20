<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'StaffShow.jsp' starting page</title>
    
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
    This is my JSP page. <br>
    <a href="uploadAction.action">文件上传</a>
    <table>
    
    	<tr>
    		<td>工号</td>
    		<td>姓名</td>
    		<td>性别</td>
    		<td>部门</td>
    		<td>职务</td>
    		<td>修改</td>
    		<td>删除</td>
    	</tr>
    	
    	<c:forEach var="staff" items="${stafflist}">
    	<tr>
    		<td>${staff.staffid}</td>
    		
    		<td>${staff.name}</td>
    		<td>${staff.sex}</td>
    		<td>${staff.dept}</td>
    		<td>${staff.positon}</td>
    		
    		<td><a href="StaffAction!findById.action?staff.staffid=${staff.staffid}">修改</a></td>
    		<td><a href="StaffAction!delete.action?staff.staffid=${staff.staffid}">删除</a></td>
    	</tr>
    	</c:forEach>
    </table>
    
    <table>
    
    	<tr>
    		<td>工号</td>
    		<td>姓名</td>
    		<td>性别</td>
    		<td>部门</td>
    		<td>职务</td>
    		<td>修改</td>
    		<td>删除</td>
    	</tr>
    	
    	<s:iterator value="stafflist">
    	<tr>
    		<td><s:property  value="staffid"></s:property></td>
    		<td><s:property  value="name"></s:property></td>
    		<td><s:property  value="sex"></s:property></td>
    		<td><s:property  value="dept"></s:property></td>
    		<td><s:property  value="positon"></s:property></td>
    		
    		<td><a href="StaffAction!findById.action?staff.staffid=<s:property  value="staffid"></s:property>">修改</a></td>
    		<td><a href="StaffAction!delete.action?staff.staffid=<s:property  value="staffid"></s:property>">删除</a></td>
    	</tr>    	
    	</s:iterator>
    </table>    
    部门：<s:property value="staff.dept"/><br />
    ${staff.dept }<br />
    ${stafflist[0].name }<br />
   list[0]名称：<s:property value="stafflist[0].name"/><br />
    <a href="StaffAction.action">添加员工</a><br />
    <s:property value="#session.username1"/><br />
    <s:iterator begin="0" end="5" var="i">  <!-- 循环变量自动压入栈顶 -->
    	<s:property value="#i"/><br />
    	<s:property/> <!-- 取栈顶 -->
    	<br />
    </s:iterator>
    <s:debug />
  </body>
</html>
