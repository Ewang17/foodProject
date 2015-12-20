<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
  </head>
  
  <body>
    <header>
       <div class="logo"><i class="fa fa-ul fa-cutlery"></i> FoodMUC</div>	    
    </header>
    
    <main class="bg">
    
	    <s:form action="customer/customer_login" method="post" cssClass="login">
	      <h3>请您登录</h3>
	      <label>用户名</label><s:textfield name="customer.name" label="用户名"></s:textfield><br>
	      <label>密码</label><s:password name="customer.password" label="密码"></s:password><br>
	      <s:submit value="登录"></s:submit>
	    </s:form>
    </main>
  </body>
</html>
