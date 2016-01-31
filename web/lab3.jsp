<%-- 
    Document   : lab3
    Created on : Jan 29, 2016, 4:28:52 PM
    Author     : Alyson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab3</title>
        <!--jquery-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
        <script type="text/javascript" src="../src/java/JS/answerBlock.js"></script>
        <!--bootstrap-->
        <link
    </head>
    <body>
        <h1>Lab3 Calculator</h1>
        <hr/>
        <h1>Area of some Shapes</h1>
        <h3>Rectangle</h3>
        <form name="rectangleForm" id="rectangleForm" class="forms" method="POST" action="calculationController">
            <input type="hidden" id="shape" name="shape" value="rectangleLab3"/>
            <input type="hidden" id="shapeName" name="shapeName" value="Rectangle"/>
            <label class="label">Length</label>
            <input name="rectangleLength" id="rectangleLength" class="input" value="" placeholder="ex: 2.36"/>
            <label class="label">Width</label>
            <input name="rectangleWidth" id="rectangleWidth" class="input" value="" placeholder="ex: 2.36"/>
            <input type="submit" name="submit" value="Get Area"/>
        </form>
        <script>
            $(document).ready(function () {
                var shape = <%=request.getAttribute("shape")%>;
                hideAnswerBlock(shape);
            });
        </script>
        <div id="answer" class="answerBlock col-md-6">
            <h1>The area of the <%=request.getAttribute("shapeName")%> is:</h1>
            <p><%=request.getAttribute("area")%> </p>
        </div>
        <h3>Circle</h3>
        <form name="circleForm" id="circleForm" class="forms" method="POST" action="calculationController">
            <input type="hidden" id="shape" name="shape" value="circle"/>
            <input type="hidden" id="shapeName" name="shapeName" value="Circle"/>
            <label class="label">Radius</label>
            <input name="radius" id="radius" class="input" value="" placeholder="ex: 2.36"/>
            <input type="submit" name="submit" value="Get Area"/>
        </form>
        <h3>Triangle</h3>
        <form name="triangleForm" id="triangleForm" class="forms" method="POST" action="calculationController">
            <input type="hidden" id="shape" name="shape" value="triangle"/>
            <input type="hidden" id="shapeName" name="shapeName" value="Triangle"/>
            <label class="label">Base</label>
            <input name="base" id="base" class="input" value="" placeholder="ex: 2.36"/>
            <label class="label">Height</label>
            <input name="height" id="height" class="input" value="" placeholder="ex: 2.36"/>
            <input type="submit" name="submit" value="Get Area"/>
        </form>
    </body>
</html>
