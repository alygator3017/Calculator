<%-- 
    Document   : results
    Created on : Jan 27, 2016, 7:17:58 PM
    Author     : Alyson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=request.getAttribute("shape")%> </title>
    </head>
    <body>
        <h1>The area of a <%=request.getAttribute("shape")%></h1>
        <p><%=request.getAttribute("area")%> </p>
    </body>
</html>
