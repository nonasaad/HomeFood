<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "com.homefood.Iocale.Internationalization" %>
<%@ page session="true" %>
<% 
Internationalization trans = new Internationalization();
String lang = "en";
if( null == session.getAttribute( "lang" ) ) 
	session.setAttribute("lang", lang);
else if ("fr".equals( session.getAttribute("lang" ) ) )
    lang = "fr";
else 
    lang = "en";
          
String lbl_title  = trans.getTrans(lang,"Welcome");
String lbl_flang  = trans.getTrans(lang,"French");
String lbl_elang  = trans.getTrans(lang,"English");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/stylesheet.css">
<title><%out.print(lbl_title);%></title>
</head>
 <body bgcolor="#F9E79F"> 
  
        <h1><center><b>Welcome to Homemade Food</b></center></h1>
 
<div id="wrapper">

    <div class="imgContent">
    	 <a style="text-decoration:none;" href="italian.jsp">
     		 <h2>Italian Cuisine</h2>
      	 </a>
     	 <a href="italian.jsp">
       		 <img src="resources/images/italian_pic.jpg" height="250" width="300" class="rounded-image"/>
    	 </a>
    </div>
  
    <div class="imgContent">
    	<a style="text-decoration:none;" href="greek.jsp">
     		 <h2>Greek Cuisine</h2>
      	 </a>
     	<a href="greek.jsp">
       		 <img src="resources/images/greek_pic.jpg" height="250" width="300" class="rounded-image"/>
     	</a>
    </div>
    
    <div class="imgContent">
    	<a style="text-decoration:none;" href="chinese.jsp">
     		  <h2>Chinese Cuisine</h2>
      	</a>
    	 <a href="chinese.jsp">
         	<img src="resources/images/chinese_pic.jpg" height="250" width="300" class="rounded-image"/>
     	</a>
    </div>
  
    <div class="imgContent">
   	 	<a style="text-decoration:none;" href="indian.jsp">
     		  <h2>Indian Cuisine</h2>
      	</a>
     	<a href="indian.jsp"> 
         	<img src="resources/images/indian_pic.jpg" height="250" width="300" class="rounded-image"/>
     	 </a>
    </div>
    
</div>
   
    
        
</body>
</html>
