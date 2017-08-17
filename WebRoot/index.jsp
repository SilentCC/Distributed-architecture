<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

		
	  
	function conn(){
	
	
		$.ajax({
		
			url:'mydata',
			dataType: 'json',
			method:'post',
			success:function(data){
			
		
			document.getElementById("hi").innerHTML+="name:"+data.name+"   sex:"+data.sex;
			conn();
			
				

			}
		});
	
	}
	conn();
		
	
	



		
		

	</script>
  </head>
  
  <body>
    This is my JSP page. <br>
    <div id="hi">
    </div>
  </body>
</html>
