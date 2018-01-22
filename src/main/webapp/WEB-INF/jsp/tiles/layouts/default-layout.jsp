<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><tiles:getAsString name="title"/></title>

    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="/css/plugins/slick/slick-theme.css" rel="stylesheet">
    <link href="/css/animate.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">

</head>

<body class="top-navigation">

<div id="wrapper">
    <div id="page-wrapper" class="gray-bg">

        <header id="header"><tiles:insertAttribute name="header"/></header>

        <section id="siteContent"><tiles:insertAttribute name="body"/></section>

        <footer id="footer"><tiles:insertAttribute name="footer"/></footer>

    </div>
</div>

</body>

</html>