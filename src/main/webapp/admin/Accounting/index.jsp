<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=cPath %>/assets/css/admin/Accounting/account.css">
<title>Insert title here</title>
<%@ include file="/admin/layouts/indexBase.jsp" %>
<%@ include file="/admin/layouts/bootstrap.jsp"%> 
<%@ include file="/admin/admin_check/check.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/admin/menu.css" />
<%@ include file="/admin/layouts/header.jsp" %>

</head>
<body>
<%@ include file="/admin/layouts/left.jsp" %>
<div class="mainContent" id="mainContent">
	<%@ include file="/admin/Accounting/main/menu_main.jsp" %>
</div>
</body>
</html>

