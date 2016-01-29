<%-- 
    Document   : lab2
    Created on : Jan 29, 2016, 2:46:44 PM
    Author     : Alyson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab2 Calculator</title>
    </head>
    <body>
        <h1>Lab2 Calculator</h1>
        <hr/>
        <h1>Area of a Rectangle</h1>
        <form name="rectangleForm" id="rectangleForm" class="forms" method="POST" action="calculationController">
            <input type="hidden" id="shape" name="shape" value="rectangle"/>
            <label class="label">Length</label>
            <input name="rectangleLength" id="rectangleLength" class="input" value="" placeholder="ex: 2.36"/>
            <label class="label">Width</label>
            <input name="rectangleWidth" id="rectangleWidth" class="input" value="" placeholder="ex: 2.36"/>
            <input type="submit" name="submit" value="Get Area"/>
        </form>
    </body>
</html>
