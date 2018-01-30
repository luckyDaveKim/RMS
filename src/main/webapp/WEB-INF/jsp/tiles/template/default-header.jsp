<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row border-bottom white-bg">
    <nav class="navbar navbar-static-top" role="navigation">
        <div class="navbar-header">
            <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse"
                    class="navbar-toggle collapsed" type="button">
                <i class="fa fa-reorder"></i>
            </button>
            <a href="/" class="navbar-brand">반도 공인중개사</a>
        </div>
        <div class="navbar-collapse collapse" id="navbar">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a aria-expanded="false" role="button" href="/"> 홈으로</a>
                </li>
                <li class="dropdown">
                    <a aria-expanded="false" role="button" href="#" class="dropdown-toggle"
                       data-toggle="dropdown">매물 <span class="caret"></span></a>
                    <ul role="menu" class="dropdown-menu">
                        <li><a href="/land/list">전체 매물</a></li>
                        <li><a href="/land/rented-list">월세 매물</a></li>
                        <li><a href="/land/leased-list">전세 매물</a></li>
                        <li><a href="/land/bought-list">매매 매물</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> 로그아웃
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</div>