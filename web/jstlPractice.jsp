<%-- 
    Document   : jstlPractice
    Created on : Feb 3, 2016, 12:45:10 PM
    Author     : Alyson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Practice page</title>

        <!--sticky footer -->
        <link href="CSS/stickyfooter.css" rel="stylesheet" type="text/css"/>   
        <!--bootstrap-->
        <link href="http://bootswatch.com/darkly/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="wrapper">
            <nav class='navbar navbar-inverse'>
                <div class='container-fluid'>
                    <div class="navbar-header">
                        <!--header stuff-->

                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="index.html" class="navbar-brand" style="text-align: center">JSTL Practice</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar-main">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="index.html">Home</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container">
                <h1>JSTL Practice</h1>
                <hr/>

                <form name="Form" id="rectangleForm" class="form-horizontal" method="POST" action="JSTLPracticeController" onsubmit="return validateFormRectangle()">
                    <fieldset>
                        <legend>Stuff</legend>
                        <div class='form-group'>
                            <label class="col-lg-2 control-label" for="name">name</label>
                            <div class='col-lg-10'>
                                <input name="name" id="name" class="input form-control" value="" placeholder="enter name here"/>
                            </div>
                        </div>
                        <div class='form-group'>
                            <label class="col-lg-2 control-label" for="gender">Gender</label>
                            <div class='col-lg-10'>
                                <input name="gender" id="gender" class="input form-control" value="" placeholder="enter gender: M or F"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-6 control-label" for="number">Number between 1 and 14</label>
                            <div class="col-lg-6">
                                <input name="number" id="number" class="input form-control" value="" placeholder="ex:3">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-6 control-label" for="iceCreamFlavor">Pick a flavor: Vanilla Or Chocolate</label>
                            <div class="col-lg-6">
                                <input name="iceCreamFlavor" id="iceCreamFlavor" class="input form-control" value="" placeholder="vanilla">
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class="col-lg-10 col-lg-offset-2">
                                <input type="submit" name="submit" class='btn btn-success' value="Get Your Doctor"/>
                            </div>
                        </div>
                    </fieldset>
                </form>
                <div class='well'>
                    <c:set var='flav' scope='session' value='${flavor}'/>
                    <h2>You picked <c:out value="${flav}"/> as your flavor!</h2>
                    <c:choose>
                        <c:when test = "${flav == 'chocolate'}">
                            How about Zanzibar Chocolate Ice Cream for a treat?!
                        </c:when>
                        <c:when test = "${flav == 'vanilla'}">
                            How about Vanilla Bean Ice Cream for a treat?! Kind of boring though...
                        </c:when>
                        <c:otherwise>
                            you didn't put in an actual flavor.... failure.
                        </c:otherwise>
                    </c:choose>
                </div>
                <div  class="well">
                    <div id="answer">
                        <p>${message}</p>
                    </div>
                </div>


                <div class="push"></div>
            </div>
        </div>

        <div class="footer">
            <p>Copyright (c) 2016</p>
        </div>
        <!--js-->
        <script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
        <script src="JS/stickyfooter.js" type="text/javascript"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>        
    </body>
</html>
