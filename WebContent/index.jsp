<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.homefood.Iocale.Internationalization" %>
    
<%
   	Internationalization trans = new Internationalization();
	String login = trans.getLangTransString("LOGIN"); 
	
%>
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title><% out.print(trans.getLangTransString("Login Application"));%></title>
 <link rel="stylesheet" type="text/css" href="resources/css/stylesheet.css">
 <script type="text/javascript" src="resources/javaScript/scripts.js"></script>
 </head>
 <body>
 <div class="cotn_principal">
  <div class="cont_centrar">
<div style="float: right;">
<small>
 <% out.print(trans.getLangTransString("Language"));%> 
 <button onclick="<% trans.setLanguage("en", "CA");%> location.reload(true);"><% out.print(trans.getLangTransString("English"));%></button>
 <button onclick="<% trans.setLanguage("fr", "CA");%> location.reload(true);"><% out.print(trans.getLangTransString("French"));%></button>
 
 <!--  
	 <select onChange= <% trans.setLanguage("en", "CA"); %>>
	  <option value="en"><% out.print(trans.getLangTransString("English"));%></option>
	  <option value="fr"><% out.print(trans.getLangTransString("French"));%></option>
	 </select>
	 -->
	 </small>
</div>
 <div class="cont_login">
 <div class="cont_info_log_sign_up">
       <div class="col_md_login">
 <div class="cont_ba_opcitiy">
        
    <h2><% out.print(trans.getLangTransString("LOGIN")); %> </h2>  
   <button class="btn_login" onclick="cambiar_login()"> <% out.print(trans.getLangTransString("LOGIN")); %> </button>
   </div>
   </div>
 <div class="col_md_sign_up">
 <div class="cont_ba_opcitiy">
  <h2>SIGN UP</h2>
 
  <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
 </div>
   </div>
       </div>
     <div class="cont_back_info">
        <div class="cont_img_back_grey">
        <img src="resources/images/signup_background.jpg" alt="" />
        </div>
        
    </div>
<div class="cont_forms" >
     <div class="cont_img_back_">
        <img src="resources/images/signup_background.jpg" alt="" />
       </div>
        <form action="loginServlet" method="post">
 <div class="cont_form_login">
 <a href="#" onclick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
    <h2>LOGIN</h2>
 <input type="text" name="username" required="required" placeholder="User name" />
 <input type="password" name="userpass" required="required" placeholder="Password" />
 <input class="btn_login" type="submit" value="Login"></input>
   </div>
   </form>
   
    <div class="cont_form_sign_up">
 <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
      <h2>SIGN UP</h2>
 <input type="text" placeholder="Email" />
 <input type="text" placeholder="User" />
 <input type="password" placeholder="Password" />
 <input type="password" placeholder="Confirm Password" />
 <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
 
   </div>
 
    </div>
    
   </div>
  </div>
 </div>
 </body>
 </html> 