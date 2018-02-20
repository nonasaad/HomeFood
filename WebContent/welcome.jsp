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
String lbl_header  = trans.getTrans(lang,"Welcome to Homemade Food");
String lbl_italian  = trans.getTrans(lang,"Italian Cuisine");
String lbl_greek  = trans.getTrans(lang,"Greek Cuisine");
String lbl_chinese  = trans.getTrans(lang,"Chinese Cuisine");
String lbl_indian  = trans.getTrans(lang,"Indian Cuisine");

String lbl_home = trans.getTrans(lang,"Home");
String lbl_news = trans.getTrans(lang,"News");
String lbl_contact = trans.getTrans(lang,"Contact");
String lbl_about = trans.getTrans(lang,"About");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/stylesheet.css">
<title><%out.print(lbl_title);%></title>
</head>
 <body bgcolor="#F9E79F"> 
 
<div id="wrapper">
		<div class="topnav">
		  <a class="active" href="welcome.jsp"><%out.print(lbl_home);%></a>
		  <a href="#news"><%out.print(lbl_news);%></a>
		  <a href="#contact"><%out.print(lbl_contact);%></a>
		  <a href="#about"><%out.print(lbl_about);%></a>
		  <div style="float: right;">
	 			<small>
	 				<% 
	 					if(lang.equals("fr")) {
	 					  	out.print("<a href=\"setlang.jsp?lang=en\">");
	 					  	out.print(lbl_elang);
	 					} else {
	 						 out.print("<a href=\"setlang.jsp?lang=fr\">");
	 						out.print(lbl_flang);
	 					}
	 					out.print("</a>");
	 				%>
			 		
		 		</small>
			</div>
		</div> 
		 
        <h1><center><b><%out.print(lbl_header);%></b></center></h1>
        
    <div class="imgContent">
    	 <a style="text-decoration:none;" href="italian.jsp">
     		 <h2><center><b><%out.print(lbl_italian);%></b></center></h2>
      	 </a>
     	 <a href="italian.jsp">
       		 <img src="resources/images/italian_pic.jpg" height="250" width="300" class="rounded-image"/>
    	 </a>
    </div>
  
    <div class="imgContent">
    	<a style="text-decoration:none;" href="greek.jsp">
     		 <h2><center><b><%out.print(lbl_greek);%></b></center></h2>
      	 </a>
     	<a href="greek.jsp">
       		 <img src="resources/images/greek_pic.jpg" height="250" width="300" class="rounded-image"/>
     	</a>
    </div>
    
    <div class="imgContent">
    	<a style="text-decoration:none;" href="chinese.jsp">
     		  <h2><center><b><%out.print(lbl_chinese);%></b></center></h2>
      	</a>
    	 <a href="chinese.jsp">
         	<img src="resources/images/chinese_pic.jpg" height="250" width="300" class="rounded-image"/>
     	</a>
    </div>
  
    <div class="imgContent">
   	 	<a style="text-decoration:none;" href="indian.jsp">
     		  <h2><center><b><%out.print(lbl_indian);%></b></center></h2>
      	</a>
     	<a href="indian.jsp"> 
         	<img src="resources/images/indian_pic.jpg" height="250" width="300" class="rounded-image"/>
     	 </a>
    </div>
    
</div>
   
    
        
</body>
</html>
