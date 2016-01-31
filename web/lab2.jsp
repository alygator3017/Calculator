<%-- 
    Document   : lab2
    Created on : Jan 29, 2016, 2:46:44 PM
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
        <!---answerBlock JS-->
        <script src="JS/answerBlock.js" type="text/javascript"></script>
        <!--validateForm-->
        <script src="JS/validateForm.js" type="text/javascript"></script>
        <title>Lab 2 Calculator</title>
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
                                    <li><a href="lab1.html">Lab 1</a></li>
                                    <li class='active'><a href="lab2.jsp">Lab 2</a></li>
                                    <li><a href="lab3.jsp">Lab 3</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container" style="padding-top: 60px">
                <h1>Lab2 Calculator</h1>
                <hr/><form name="rectangleForm" id="rectangleForm" class="forms form-horizontal col-lg-4" method="POST" action="calculationController" onsubmit="return validateFormRectangle()">
                    <fieldset>
                        <legend>Area of a Rectangle</legend>
                        <input type="hidden" id="shape" name="shape" value="rectangleLab2"/>
                        <input type="hidden" id="shapeName" name="shapeName" value="Rectangle"/>
                        <div class='form-group'>
                            <label class="col-lg-2 control-label" for="rectangleLength">Length</label>
                            <div class='col-lg-10'>
                                <input name="rectangleLength" id="rectangleLength" class="input form-control" value="" placeholder="ex: 2.36"/>
                            </div>
                        </div>
                        <div class='form-group'>
                            <label class="col-lg-2 control-label" for="rectangleWidth">Width</label>
                            <div class='col-lg-10'>
                                <input name="rectangleWidth" id="rectangleWidth" class="input form-control" value="" placeholder="ex: 2.36"/>
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class="col-lg-10 col-lg-offset-2">
                                <input type="submit" name="submit" value="Get Area"/>
                            </div>
                        </div>
                    </fieldset>
                </form>
                <div class="col-lg-5">
                    <img src="imgs/rectangleArea.png" alt="rectangleArea" class="img-responsive"/>
                </div>
                <script>
                    $(document).ready(function () {
                        var shape = <%=request.getAttribute("shape")%>;
                        hideAnswerBlock(shape);
                    });
                </script>
                <div id="answer" class="col-lg-3">
                    <h5>The area of the ${shapeName} is:</h5>
                    <h2>${area} </h2>
                </div>
                <div class="push"></div>
            </div>
        </div>

        <div class="footer">
            <p>Copyright (c) 2016</p>
        </div>
    </body>
</html>
