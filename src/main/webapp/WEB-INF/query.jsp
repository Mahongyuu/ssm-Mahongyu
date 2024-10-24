<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 2024/10/24
  Time: 下午5:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>优雅用户信息展示</title>
    <style>
        /* 整体页面风格 */
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background-size: cover;
            background-repeat: no-repeat;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        /* 标题部分 */
        h2 {
            text-align: center;
            color: #333333;
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 30px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        /* 搜索容器 */
        .search-container {
            margin-bottom: 25px;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }

        .search-input {
            padding: 12px;
            border: 2px solid #ccc;
            border-radius: 8px;
            width: 300px;
            font-size: 18px;
            transition: border-color 0.3s ease;
        }

        .search-input:focus {
            border-color: #4CAF50;
            outline: none;
        }

        .search-button {
            padding: 12px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .search-button:hover {
            background-color: #388E3C;
        }

        /* 添加按钮 */
        .add-button {
            padding: 12px 20px;
            background-color: #2196F3;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            position: absolute;
            top: 25px;
            right: 30px;
            transition: background-color 0.3s ease;
        }

        .add-button:hover {
            background-color: #1976D2;
        }

        /* 表格部分 */
        table {
            width: 100%;
            border-collapse: collapse;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            overflow: hidden;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-size: 20px;
            padding: 18px;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        tr {
            transition: background-color 0.3s ease;
        }

        tr:hover {
            background-color: #e0e0e0;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            font-size: 18px;
        }

        /* 删除链接 */
        td a {
            color: #FF5722;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        td a:hover {
            color: #E64A19;
        }
    </style>
</head>
<body>
<h2>用户信息</h2>
<div class="search-container">
    <input type="text" class="search-input" placeholder="搜索用户...">
    <button class="search-button">搜索</button>
</div>
<a href="${pageContext.request.contextPath}/stu/add" class="add-button">添加用户</a>
<table>
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">名称</th>
        <th scope="col">价格</th>
        <th scope="col">出版社</th>
        <th scope="col">操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="a">
        <tr>
            <td>${a.id}</td>
            <td>${a.name}</td>
            <td>${a.price}</td>
            <td>${a.publisher}</td>
            <td><a href="<%=basePath%>/stu/del?id=${a.id}">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
