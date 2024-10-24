<%--
  Created by IntelliJ IDEA.
  User: 呜呼
  Date: 2024/10/12
  Time: 下午1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() +"://"+ request.getServerName()
            +":"+request.getServerPort()+path;
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>添加用户</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 50px;
        }
        .form-container h2 {
            color: #007bff;
            margin-bottom: 30px;
            text-align: center;
        }
        .btn-submit {
            width: 100%;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 form-container">
            <h2>添加用户</h2>
            <form action="<%=basePath%>/stu/save" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">名称:</label>
                    <input type="text" name="name" class="form-control" id="name" placeholder="请输入名称" required>
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label">价格:</label>
                    <input type="text" name="price" class="form-control" id="price" placeholder="请输入价格" required>
                </div>
                <div class="mb-3">
                    <label for="publisher" class="form-label">出版社:</label>
                    <input type="text" name="publisher" class="form-control" id="publisher" placeholder="请输入出版社" required>
                </div>
                <button type="submit" class="btn btn-primary btn-submit">提交</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
