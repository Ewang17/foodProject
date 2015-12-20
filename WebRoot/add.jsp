<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示所有Food</title>
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
       <div class="account">
         <c:choose>
	       <c:when test="${customer.name ==null}">
	         <a href="reg.jsp">注册</a>
	         <a href="login.jsp">登录</a>
	       </c:when>
	       <c:otherwise>
	         <c:out value="${customer.name}"></c:out>, 欢迎您!
	       </c:otherwise>
	     </c:choose>
		    
       </div>
       
		    
    </header>

     <main class="container-fluid">
	    <div class="row">
		   <div class="col-md-10">
		      <s:form action="food/food_addFood" cssClass="form-horizontal">
		       <div class="panel panel-success">
			       <div class="panel-heading">
		               <h4 class="panel-title"> <i class="fa fa-cutlery"></i> 添 加 美 食 </h4>
		           </div>
		           <div class="panel-body">
				       <div class="form-group">
			                <label class="control-label col-md-3">美食名称</label>
			                <div class="col-md-4">
                              <input type="text" name="food.foodname" class="form-control input-sm" required>
                           </div>
			           </div>  
			           <div class="form-group">
			                <label class="control-label col-md-3">美食单价</label>
			                <div class="col-md-2">
                              <input type="text" name="food.unitprice" class="form-control input-sm" placeholder="&yen;" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">美食图片</label>
			                <div class="col-md-4">
                              <input type="file" name="food.filepath" class="form-control input-sm" required>
                            </div>
			           </div>
			           <div class="form-group col-md-3">
				          <button type="submit" class="btn btn-success pull-right">提  交 </button>
				       </div>
				   </div>
				</div>
		    </s:form>
		  </div>
	   </div>
	</main>
  </body>
</html>
