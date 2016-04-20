<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#staffid").blur(function(){
				$.post("StaffAjax!isExist.action","staff.staffid="+$("#staffid").val(),function(data){
					//alert(data);
					//alert(data.dept+","+data.staffid);
					if(data.dept==null){
						$("span").html("<font color='green'>可用</font>");
					}else{
						$("span").html("<font color='red'>已存在</font>");
					}
				});
			});
		});
	</script>

  </head>
  
  <body>
	<form action="ChangeAction.action" method="post">
		工号<input type="text" name="staff.staffid"  value="" id="staffid"><span></span><br />
		姓名<input type="text" name="staff.name" value=""><br />
		性别:男<input type="radio" name="staff.sex" value="男">
		          女<input type="radio" name="staff.sex" value="女" >
		<br />
		
		部门 <select name="staff.dept">
			<c:forEach var="a" items="${deptList}">
				<option  value="${a}"  >
					<c:out value="${a}"></c:out>
				</option>
			</c:forEach>
		</select> <br /> 
		
		职务 <select name="staff.positon" >
			<c:forEach var="a" items="${posList}">
				<option value="${a}" >
					<c:out value="${a}"></c:out>
				</option>
			</c:forEach>
		</select> <br /> 
		
		<input type="submit" value="确定">

	</form>    
  </body>
</html>
