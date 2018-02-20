<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/stylesheet.css">
<title>Italian Cuisine</title>

<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
td, th {
    text-align: left;
    padding: 8px;
}
</style>
</head>

 <body bgcolor="#FCF3CF">
 

 
 
 
    <center><h1>Italian MENU</h1></center>
    <br><br><br>
    
    <table>
  <tr>
    <th>Dishes</th>
    <th>Prices</th>
    <th></th>
  </tr>
  <tr>
    <td>Breaded Eggplant Rollatini</td>
    <td>$11.99</td>
    <td><img src="resources/images/italian_food_breaded_egg.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Chicken Lasagna</td>
    <td>$15.75</td>
    <td><img src="resources/images/italian_food_lasagna.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Stracciatella Soup</td>
    <td>$10.25</td>
    <td><img src="resources/images/italian_food_soup.jpg" class="rounded-image"></td>
  </tr>

</table>


</body>
=======
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
          
String lbl_title  = trans.getTrans(lang,"Italian Cuisine");
String lbl_flang  = trans.getTrans(lang,"French");
String lbl_elang  = trans.getTrans(lang,"English");
String lbl_Italian_Menu  = trans.getTrans(lang,"Italian Menu");
String lbl_dishes  = trans.getTrans(lang,"Dishes");
String lbl_prices  = trans.getTrans(lang,"Prices");
String lbl_breaded_eggplant  = trans.getTrans(lang,"Breaded Eggplant Rollatini");
String lbl_Chicken_Lasagna  = trans.getTrans(lang,"Chicken Lasagna");
String lbl_Stracciatella_Soup  = trans.getTrans(lang,"Stracciatella Soup");

String lbl_home = trans.getTrans(lang,"Home");
String lbl_news = trans.getTrans(lang,"News");
String lbl_contact = trans.getTrans(lang,"Contact");
String lbl_about = trans.getTrans(lang,"About");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/stylesheet.css">
<title><%out.print(lbl_title); %></title>

<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    text-align: left;
    padding: 8px;
}
</style>
</head>

 <body bgcolor="#FCF3CF">
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

 
 
             		 <h2><center><b><%out.print(lbl_Italian_Menu);%></b></center></h2>
    <br><br><br>
    
    <table>
  <tr>
    <th>Dishes</th>
         		 <h2><center><b><%out.print(lbl_dishes);%></b></center></h2>
    
    <th>Prices</th>
         		 <h2><center><b><%out.print(lbl_prices);%></b></center></h2>
    <th></th>
  </tr>
  <tr>
    <td>Breaded Eggplant Rollatini</td>
             		 <h2><center><b><%out.print(lbl_breaded_eggplant);%></b></center></h2>
    <td>$11.99</td>
    <td><img src="resources/images/italian_food_breaded_egg.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Chicken Lasagna</td>
             		 <h2><center><b><%out.print(lbl_Chicken_Lasagna);%></b></center></h2>
    <td>$15.75</td>
    <td><img src="resources/images/italian_food_lasagna.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Stracciatella Soup</td>
             		 <h2><center><b><%out.print(lbl_Stracciatella_Soup);%></b></center></h2>
    <td>$10.25</td>
    <td><img src="resources/images/italian_food_soup.jpg" class="rounded-image"></td>
  </tr>

</table>


</body>
>>>>>>> branch 'HudaBranch' of https://github.com/nonasaad/HomeFood.git
</html>