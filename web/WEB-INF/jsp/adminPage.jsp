<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>志愿者管理</title>
</head>

<body>
<div class="head">
    志愿服务管理系统
</div>
<div class="left">
    <ul>
        <li><a href="/toUpdateUserInfo" target="main">管理用户信息</a></li>
        <li><a href="" target="main">管理志愿活动</a></li>
    </ul>
</div>
<div class="right">
    <iframe name="main" src="" width="99%" height="99%"></iframe>
</div>
<div class="foot"></div>

<style type="text/css">
    *{
        margin: 0;
        padding: 0;
    }
    .head{
        width: 100%;
        height: 50px;
        background: #409EFF;
        position: relative;
    }
    .left{
        width: 200px;
        background:rgb(78, 82, 80);
        position: absolute;
        top: 50px;
        bottom: 0;
    }
    .right{
        /* background:cyan; */
        position: absolute;
        top: 50px;
        left: 220px;
        bottom: 60px;
        right: 0;
    }
    .foot{
        position: absolute;
        left: 0;
        bottom: 0;
        width: 100%;
        height: 60px;
        background: #409EFF;
    }

    /*  */
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        width: 200px;
        background-color: #f1f1f1;
    }

    li a {
        display: block;
        color: #000;
        padding: 8px 16px;
        text-decoration: none;
    }

    /* 鼠标移动到选项上修改背景颜色 */
    li a:hover {
        background-color: #555;
        color: white;
    }
    /*  */
</style>
</body>
</html>
