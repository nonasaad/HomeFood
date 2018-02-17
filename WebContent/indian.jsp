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
          
String lbl_title  = trans.getTrans(lang,"Indian Cuisine");
String lbl_flang  = trans.getTrans(lang,"French");
String lbl_elang  = trans.getTrans(lang,"English");
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
    <center><h1>Indian MENU</h1></center>
    <br><br><br>
    
    <table>
  <tr>
    <th>Dishes</th>
    <th>Prices</th>
    <th></th>
  </tr>
  <tr>
    <td>Chicken Biriani</td>
    <td>$13.45</td>
    <td><img src="resources/images/indian_food_biriani.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Bhaji</td>
    <td>$11.50</td>
    <td><img src="resources/images/indian_food_bhaji.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Kuzhambu</td>
    <td>$10.25</td>
    <td><img src="resources/images/indian_food_kuzhambu.jpg" class="rounded-image"></td>
  </tr>

</table>

</body>
</html>