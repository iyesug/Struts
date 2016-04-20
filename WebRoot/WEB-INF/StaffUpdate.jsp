<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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

<title>My JSP 'StaffAdd.jsp' starting page</title>

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
	This is my JSP page.StaffAdd
	<br>
	
	<form action="ChangeAction.action" method="post">
		<input type="hidden" name="staff.staffid"  value="${staff.staffid}"><br />
		姓名<input type="text" name="staff.name" value="${staff.name}"><br />
		性别:<s:radio name="staff.sex" list="sexList" listKey="sexKey" listValue="sexValue" value="staff.sex"></s:radio>
		<br />
		
		部门 
		<s:select list="deptList" value="staff.dept"></s:select>
		<br /> 
		
		职务 
		<s:select list="posList" value="staff.positon"></s:select>
		<br /> 
		
		<input type="submit" value="确定">

	</form>
	
	<!-- <form action="ChangeAction.action" method="post"> -->
	<s:form theme="simple">
		<input type="hidden" name="staff.staffid"  value="${staff.staffid}"><br />
		姓名<input type="text" name="staff.name" value="${staff.name}"><br />
		性别:男<input type="radio" name="staff.sex" value="男" ${staff.sex=="男"?"checked='checked'":"" }>
		          女<input type="radio" name="staff.sex" value="女" ${staff.sex=="女"?"checked='checked'":"" }>
		<br />
		
		部门 <select name="staff.dept">
			<c:forEach var="a" items="${deptList}">
				<option  value="${a}"  ${staff.dept==a?"selected='selected'":"" }>
					<c:out value="${a}"></c:out>
				</option>
			</c:forEach>
		</select> <br /> 
		
		职务 <select name="staff.positon" >
			<c:forEach var="a" items="${posList}">
				<option value="${a}"   ${staff.positon==a?"selected='selected'":"" }>
					<c:out value="${a}"></c:out>
				</option>
			</c:forEach>
		</select> <br /> 
		
		
		<s:checkboxlist list="allLoveList"  key="myLoveList" ></s:checkboxlist><br />
		<%
			List<String> list=new ArrayList<String>();
			list.add("男");
			list.add("中");
			session.setAttribute("mylist", list);
		 %>
		<s:checkboxlist list="sexList" listKey="sexKey" listValue="sexValue" key="#session.mylist" ></s:checkboxlist>
		<input type="submit" value="确定">
		
	</s:form>	
</body>
</html>
