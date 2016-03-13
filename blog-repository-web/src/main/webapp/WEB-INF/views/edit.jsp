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
    <link rel="stylesheet" type="text/css"
          href="${contextPath}/<s:theme code='bootstrap-css'/>">
    <link rel="stylesheet" type="text/css"
          href="${contextPath}/<s:theme code='bootstrap-theme-css'/>">
    <link rel="stylesheet" type="text/css"
          href="${contextPath}/<s:theme code='main-css'/>">
    <link rel="stylesheet" type="text/css"
          href="${contextPath}/<s:theme code='jquery-selectBoxIt-css'/>">
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

<div class="well">

    <sf:form method="POST" class="well" action="/neo-career-app-web/editBlog" enctype="multipart/form-data"
             modelAttribute="blog">
        <div class="form-group">
            <label for="author"><s:message code="blog.author"/>:</label>
            <sf:input path="authorName" type="text" class="form-control" id="author"></sf:input>
        </div>
        <div class="form-group">
            <label path="title" for="title"><s:message code="blog.title"/>:</label>
            <sf:input path="title" type="text" class="form-control" id="title" placeholder="請輸入標題"></sf:input>
        </div>
        <div class="form-group">
            <label for="content"><s:message code="blog.content"/>:</label>
            <sf:textarea path="content" class="form-control" rows="5" id="content"></sf:textarea>
        </div>
        <button type="submit" class="btn btn-default"><s:message code="blog.submit"/> </button>
        <button type="button" class="btn btn-default" onclick="cancelNewBlog()"><s:message code="blog.cancel"/> </button>
    </sf:form>
</div>
</body>
</html>