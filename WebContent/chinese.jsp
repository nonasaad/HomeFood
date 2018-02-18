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
          
String lbl_title  = trans.getTrans(lang,"Chinese Cuisine");
String lbl_flang  = trans.getTrans(lang,"French");
String lbl_elang  = trans.getTrans(lang,"English");
String lbl_chinese_Menu  = trans.getTrans(lang,"Chinese Menu");
String lbl_dishes  = trans.getTrans(lang,"Dishes");
String lbl_prices  = trans.getTrans(lang,"Prices");
String lbl_noodles = trans.getTrans(lang,"Noodles");
String lbl_ramen  = trans.getTrans(lang,"Ramen");
String lbl_sushi  = trans.getTrans(lang,"sushis");
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

     		 <h2><center><b><%out.print(lbl_chinese_Menu);%></b></center></h2>
    
    <table>
  <tr>
    <th>Dishes</th>
         		 <h2><center><b><%out.print(lbl_dishes);%></b></center></h2>
    
    <th>Prices</th>
         		 <h2><center><b><%out.print(lbl_prices);%></b></center></h2>
    
    <th></th>
  </tr>
  <tr>
    <td>Noodles</td>
    <h2><center><b><%out.print(lbl_noodles);%></b></center></h2>
    
    <td>$5.88</td>
    <td><img src="resources/images/chinese_food_noodle.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Ramen</td>
    <h2><center><b><%out.print(lbl_ramen);%></b></center></h2>
    <td>$9.99</td>
    <td><img src="resources/images/chinese_food_ramen.jpg" class="rounded-image"></td>
  </tr>
  <tr>
    <td>Sushi</td>
    <h2><center><b><%out.print(lbl_sushi);%></b></center></h2>
    <td>$12.38</td>
    <td><img src="resources/images/chinese_food_sushi.jpg" class="rounded-image"></td>
  </tr>

</table>

</body>
</html>