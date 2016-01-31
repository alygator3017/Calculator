<%-- 
    Document   : results
    Created on : Jan 27, 2016, 7:17:58 PM
    Author     : Alyson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--js-->
        <script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
        <!--sticky footer -->
        <script src="JS/stickyfooter.js" type="text/javascript"></script>
        <link href="CSS/stickyfooter.css" rel="stylesheet" type="text/css"/>   
        <!--bootstrap-->
        <script src="JS/bootstrap.min.js" type="text/javascript"></script>
        <link href="CSS/bootstrap.paper.min.css" rel="stylesheet" type="text/css"/>
        <!--layout-->
        <link href="CSS/layout.css" rel="stylesheet" type="text/css"/>
        <title>Lab 1 Calculator <%=request.getAttribute("shapeName")%> Results</title>
    </head>
    <body>
        <div class="wrapper">
            <nav class='navbar navbar-default'>
                <div class='container-fluid'>
                    <div class="navbar-header">
                        <!--header stuff-->

                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="index.html" class="navbar-brand" style="text-align: center">Area Calculators Labs</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar-main">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="index.html">Home</a>
                            </li>
                            <li class='dropdown'>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id='labs'>Labs <span class="caret"></span></a>
                                <ul class="dropdown-menu" aria-labelledby='labs'>
                                    <li class='active'><a href="lab1.html">Lab 1</a></li>
                                    <li><a href="lab2.jsp">Lab 2</a></li>
                                    <li><a href="lab3.jsp">Lab 3</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container">
                <style>body{text-align:center;}</style>
                <h3>The area of the <%=request.getAttribute("shapeName")%> is:</h3>
                <h1><%=request.getAttribute("area")%> </h1>
                <div class="push"></div>
            </div>
        </div>

        <div class="footer">
            <p>Copyright (c) 2016</p>
        </div>
    </body>
</html>
