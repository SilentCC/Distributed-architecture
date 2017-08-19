<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	
	<script src="http://cdn.bootcss.com/jquery/3.0.0/jquery.min.js"></script>
	<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
   <script type="text/javascript">

		
	  
	function conn1(){
	
	
		$.ajax({
		
			url:'mydata',
			dataType: 'json',
			method:'post',
			success:function(data){
			//alert(data);
			
			$("#hi").append("姓名："+data.name+"  性别："+data.sex);
			conn1();
	
			},
			error:function(e){
				conn1();
			
			}
		});
	
	}
	
	</script>
	
	<script type="text/javascript" src="ajax-pushlet-client.js"></script>
	<script type="text/javascript">
	
	
		function conn2(){
	
		PL._init();
		
		
		
		PL.joinListen('/suige/he');
		}
	
		
		function onData(event){ 
		
		var data =JSON.parse(event.get("mess"));
		
		$("#hi2").append("姓名："+data.name+"性别："+data.sex);
		
		
		}
		
	</script>
	
  </head>
  
  <body>
    This is my JSP page. <br>
  	<p class="navbar-text">ajax轮询</p>
  	<button type="button" class="btn btn-default navbar-btn" onclick="conn1()">测试</button>
    <div class="jumbotron" id="hi">
    </div>
    
    <p class="navbar-text">长连接</p>
  	<button type="button" class="btn btn-default navbar-btn" onclick="conn2()">测试</button>
    <div class="jumbotron" id="hi2">
    </div>
  </body>
</html>
