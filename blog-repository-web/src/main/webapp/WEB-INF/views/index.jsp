<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath"
       value="${pageContext.servletContext.contextPath}" scope="page"/>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"><![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>YuYu's Blog</title>
    <link rel="stylesheet" type="text/css"
          href="${contextPath}/<s:theme code='bootstrap-css'/>">
    <link rel="stylesheet" type="text/css"
          href="${contextPath}/<s:theme code='bootstrap-theme-css'/>">
    <link rel="stylesheet" type="text/css"
          href="${contextPath}/<s:theme code='main-css'/>">
    <link rel="stylesheet" type="text/css"
          href="${contextPath}/<s:theme code='jquery-selectBoxIt-css'/>">
    <link rel="stylesheet" type="text/css"
          href="${contextPath}/<s:theme code='bootstrap-post'/>">
    <style>
    </style>
    <!--[if lt IE 9]>
    <script src="js/vendor/html5-3.6-respond-1.1.0.min.js"></script>
    <![endif]-->
    <script src="${contextPath}/<s:theme code='jquery-js'/>"></script>
    <script src="${contextPath}/<s:theme code='bootstrap-js'/>"></script>
    <script src="${contextPath}/<s:theme code='main-js'/>"></script>
    <script src="${contextPath}/<s:theme code='jquery-ui-js'/>"></script>
    <script src="${contextPath}/<s:theme code='jquery-selectBoxIt-js'/>"></script>
</head>

<body style="background-color: #BACFDA;">

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${contextPath}/blog"><s:message code="blog.home"/> </a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="${contextPath}/blog?lang=ja">日本語</a>
                </li>
                <li>
                    <a href="${contextPath}/blog?lang=en">English</a>
                </li>
                <li>
                    <a href="${contextPath}/blog?lang=zh_tw">中文</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<div class="container">
    <div class="row" id="newBlogButton">
        <div class="col-md-2"></div>
        <div class="col-md-4">
            <s:message code="blog.message.line1"/><br>
            <s:message code="blog.message.line2"/><br>
            <s:message code="blog.message.line3"/>
        </div>
        <div class="col-md-4 new-blog">
            <button type="button" class="btn btn-primary" onclick="showBlogCreatePanel()">+ <s:message
                    code="blog.create"/></button>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row">
        <div class="col-md-2"></div>
        <div id="newBlogContent" class="col-md-8"></div>
        <div class="col-md-2"></div>
    </div>
    <hr>
    <c:forEach var="blog" items="${blogWrapper.blogs}">
        <c:set var="rand"><%= java.lang.Math.round(java.lang.Math.random() * 45) + 1 %>
        </c:set>
        <div class="row">
            <div class="col-md-2"></div>
            <!-- Blog Post Content Column -->
            <div class="col-lg-8">
                <!-- Blog Post -->
                <!-- Title -->
                <h1>${blog.title}</h1>

                <!-- Author -->
                <p class="lead">
                    by <a href="#">${blog.authorName}</a>
                </p>

                <hr>

                <!-- Date/Time -->
                <f:formatDate value="${blog.updateDate}" var="updateDate" pattern="yyyy/MM/dd HH:mm"/>
                <p><span class="glyphicon glyphicon-time"></span> Posted on ${updateDate}</p>

                <hr>

                <!-- Preview Image -->

                <img class="img-responsive" src="${contextPath}/img/${rand}.jpg" alt="">
                <hr>
                <!-- Post Content -->
                <p class="lead">
                        ${blog.content}
                </p>


            </div>

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-2"></div>

        </div>
    </c:forEach>
    <!-- /.row -->

    <hr>

    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Your Website 2014</p>
            </div>
        </div>
        <!-- /.row -->
    </footer>

</div>

</body>
</html>