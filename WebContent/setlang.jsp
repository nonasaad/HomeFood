<%@ page session="true" %>
<%
// your default language.
String default_language = "en";
String session_language = default_language;

if(request.getParameter( "lang" )  != null )
	session_language =  request.getParameter( "lang" );

if(session_language.equalsIgnoreCase("fr")
|| session_language.equalsIgnoreCase("en") ) {
    // if lang is equal to fr (french) or equal to en (english)...select the language
    // and redirect 
    session.setAttribute( "lang", session_language );
    // now we need to do a redirect
    // note: redirecting to project context.
    response.sendRedirect( request.getContextPath() );
} else {
    // use the default language in this case.
    session.setAttribute( "lang", default_language );
} //-- ends else block
%>
