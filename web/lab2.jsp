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
        <!--js-->
        <script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
    </head>
    <body>
        <h1>Lab2 Calculator</h1>
        <hr/>
        <h1>Area of a Rectangle</h1>
        <form name="rectangleForm" id="rectangleForm" class="forms" method="POST" action="calculationController">
            <input type="hidden" id="shape" name="shape" value="rectangleLab2"/>
            <input type="hidden" id="shapeName" name="shapeName" value="Rectangle"/>
            <label class="label">Length</label>
            <input name="rectangleLength" id="rectangleLength" class="input" value="" placeholder="ex: 2.36"/>
            <label class="label">Width</label>
            <input name="rectangleWidth" id="rectangleWidth" class="input" value="" placeholder="ex: 2.36"/>
            <input type="submit" name="submit" value="Get Area"/>
        </form>
        <script>
            $(document).ready(function () {
                if (<%=request.getAttribute("shape")%> == null) {
                    $('#answers').hide();
                    console.log("hidden");
                } else {
                    $('#answer').show();
                    console.log("shown");
                }
            })
        </script>
        <div id="answers">
            <h1>The area of the <%=request.getAttribute("shapeName")%> is:</h1>
            <p><%=request.getAttribute("area")%> </p>
        </div>
    </body>
</html>
