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
          
String lbl_title  = trans.getTrans(lang,"Greek Cuisine");
String lbl_flang  = trans.getTrans(lang,"French");
String lbl_elang  = trans.getTrans(lang,"English");
String lbl_Greek_Menu  = trans.getTrans(lang," Greek Menu");
String lbl_dishes  = trans.getTrans(lang,"Dishes");
String lbl_prices  = trans.getTrans(lang,"Prices");
String lbl_Gigantes_Plaki  = trans.getTrans(lang,"Gigantes Plaki - White beans");
String lbl_Grape_Leaves  = trans.getTrans(lang,"Grape Leaves");
String lbl_G_Checken_Salad  = trans.getTrans(lang,"Grilled Chicken Salad");

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
		</div> 
	
    <center><h1>lbl_Greek_Menu</h1></center>
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
    <td>Gigantes Plaki - White beans</td>
    <h2><center><b><%out.print(lbl_Gigantes_Plaki);%></b></center></h2>
    <td>$9.65</td>
    <td><img src="resources/images/greek_food_gigantes.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Grape Leaves</td>
    <h2><center><b><%out.print(lbl_Grape_Leaves);%></b></center></h2>
    <td>$7.75</td>
    <td><img src="resources/images/greek_food_leaves.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Grilled Chicken Salad</td>
    <h2><center><b><%out.print(lbl_G_Checken_Salad);%></b></center></h2>
    <td>$13.25</td>
    <td><img src="resources/images/greek_food_salad.jpg" class="rounded-image"></td>
  </tr>

</table>

</body>
</html>