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
    
    <title>注册页面</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	
  </head>
  
  <body>
    <header>
       <div class="logo"><i class="fa fa-ul fa-cutlery"></i> FoodMUC</div>	    
    </header>  
    <main class="bg">
    
	    <s:form action="customer/customer_reg" method="post" cssClass="login" validate="true">
	      <h3>注&nbsp;&nbsp;&nbsp;&nbsp;册</h3>
	      <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <s:textfield name="customer.name"></s:textfield>
                <!--<input type="text" name="customer.name" pattern="^[a-zA-Z]\w{5,15}$" class="form-control" placeholder="请输入用户名" required>  -->
                <!--<input type="email" name="customer.name" class="form-control" placeholder="请输入您的邮箱" required>  -->
                <!--<input type="text" name="customer.name" class="form-control" placeholder="请输入用户名" required>  -->
              </div>
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" name="customer.password" class="form-control" placeholder="请输入密码" required>
              </div>
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-home"></i></span>
                <input type="text" name="customer.address" class="form-control" placeholder="请输入您的地址">
              </div>
          </div>
	      <button type="submit" class="btn btn-success btn-login">注&nbsp;&nbsp;册 </button>
	    </s:form>
    </main>
  </body>
</html>
