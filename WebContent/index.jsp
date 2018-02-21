<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.homefood.Iocale.Internationalization"%>
<%@ page session="true"%>
<%
	Internationalization trans = new Internationalization();
	String lang = "en";
	if (null == session.getAttribute("lang"))
		session.setAttribute("lang", lang);
	else if ("fr".equals(session.getAttribute("lang")))
		lang = "fr";
	else
		lang = "en";

	String lbl_title = trans.getTrans(lang, "Login Application");
	String lbl_login = trans.getTrans(lang, "LOGIN");
	String lbl_signup = trans.getTrans(lang, "SIGN UP");
	String lbl_flang = trans.getTrans(lang, "French");
	String lbl_elang = trans.getTrans(lang, "English");
	String lbl_error = trans.getTrans(lang, "Sorry username or password error");

	String lbl_home = trans.getTrans(lang, "Home");
	String lbl_news = trans.getTrans(lang, "News");
	String lbl_contact = trans.getTrans(lang, "Contact");
	String lbl_about = trans.getTrans(lang, "About");

	//Placeholder strings 
	String lbl_email = trans.getTrans(lang, "Email Address");
	String lbl_fullName = trans.getTrans(lang, "User name");
	String lbl_password = trans.getTrans(lang, "Password");
	String lbl_confirmPass = trans.getTrans(lang, "Confirm Password");
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>
	<%
		out.print(lbl_title);
	%>
</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/stylesheet.css">
<script type="text/javascript" src="resources/javaScript/scripts.js"></script>
</head>
<body>
	<div class="topnav">
		<a class="active" href="index.jsp">
			<%
				out.print(lbl_home);
			%>
		</a> <a href="#news">
			<%
				out.print(lbl_news);
			%>
		</a> <a href="#contact">
			<%
				out.print(lbl_contact);
			%>
		</a> <a href="#about">
			<%
				out.print(lbl_about);
			%>
		</a>
		<div style="float: right;">
			<small> <%
 	if (lang.equals("fr")) {
 		out.print("<a href=\"setlang.jsp?lang=en&path=/index.jsp\">");
 		out.print(lbl_elang);
 	} else {
 		out.print("<a href=\"setlang.jsp?lang=fr&path=/index.jsp\">");
 		out.print(lbl_flang);
 	}
 	out.print("</a>");
 %>

			</small>
		</div>
	</div>
	<div class="cont_centrar">
		<div class="cont_login">
			<div class="cont_info_log_sign_up">
				<div class="col_md_login">
					<div class="cont_ba_opcitiy">
						<%
							if ("false".equalsIgnoreCase((String) request.getAttribute("status")))
								out.print("<div><p style=\"color:red\">" + lbl_error + "</p></div>");
						%>
						<h2>
							<%
								out.print(lbl_login);
							%>
						</h2>
						<button class="btn_login" onclick="cambiar_login()">
							<%
								out.print(lbl_login);
							%>
						</button>
					</div>
				</div>
				<div class="col_md_sign_up">
					<div class="cont_ba_opcitiy">
						<h2>
							<%
								out.print(lbl_signup);
							%>
						</h2>
						<button class="btn_sign_up" onclick="cambiar_sign_up()">
							<%
								out.print(lbl_signup);
							%>
						</button>
					</div>
				</div>
			</div>

			<div class="cont_back_info">
				<div class="cont_img_back_grey">
					<img src="resources/images/signup_background.jpg" alt="" />
				</div>
			</div>

			<div class="cont_forms">
				<div class="cont_img_back_">
					<img src="resources/images/signup_background.jpg" alt="" />
				</div>
				<form action="loginServlet" method="post">
					<div class="cont_form_login">
						<a href="#" onclick="ocultar_login_sign_up()"><i
							class="material-icons">&#xE5C4;</i></a>
						<h2>
							<%
								out.print(lbl_login);
							%>
						</h2>
						<input type="email" name="username" required="required"
							placeholder="<%out.print(lbl_email);%>" /> <input
							type="password" name="userpass" required="required"
							pattern="^\S{6,}$" placeholder="<%out.print(lbl_password);%>" />
						<button class="btn_sign_up"">
							<%
								out.print(lbl_login);
							%>
						</button>
					</div>
				</form>
				<form action="SignUpServlet" method="post">
					<div class="cont_form_sign_up">
						<a href="#" onclick="ocultar_login_sign_up()"><i
							class="material-icons">&#xE5C4;</i></a>
						<h2>
							<%
								out.print(lbl_signup);
							%>
						</h2>
						<input type="email" name="email" required="required"
							placeholder="<%out.print(lbl_email);%>" /> <input type="text"
							name="full_name" required="required"
							placeholder="<%out.print(lbl_fullName);%>" /> <input
							type="password" name="password" id="password" required="required"
							pattern="^\S{6,}$" placeholder="<%out.print(lbl_password);%>" />
						<input type="password" name="confirm_pass" id="confirm_pass"
							required="required" pattern="^\S{6,}$"
							oninput="check(this)" placeholder="<%out.print(lbl_confirmPass);%>" />
						<script language='javascript' type='text/javascript'>
							function check(input) {
								if (input.value != document
										.getElementById('password').value) {
									input
											.setCustomValidity('Password Must be Matching.');
								} else {
									// input is valid -- reset the error message
									input.setCustomValidity('');
								}
							}
						</script>
						<button class="btn_sign_up">
							<%
								out.print(lbl_signup);
							%>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
