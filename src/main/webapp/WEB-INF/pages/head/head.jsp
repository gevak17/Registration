<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html;charset=cp1251"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="ua">
<head>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
        .body1 {
            background: #ffffee;
            height: 100%;
            width: 100%;
        }
        h1, h2{
            text-align: center;
        }
        .menu li{
            display: inline-flex;
            list-style: none;
        }
        .regGidrant input {
            width: 10%;
        }
        a {
            text-decoration: none;
            padding: 5px;
            border: 1px black solid;
            border-radius: 10px;
            background: darkgrey;
            color: black;
        }
        input{
            padding: 5px;
            margin: 5px;
        }
        table {
            border: 1px black inset;
        }
        tr {
            border: 1px black solid;
        }
        a:hover {
            background: #786b59;
            color: #ffe;
        }
        .delete{
            padding: 1px;
        }
    </style>