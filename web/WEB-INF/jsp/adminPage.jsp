<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>志愿者管理</title>
</head>

<body>
<div class="head">
<%--    <P style="">志愿服务管理系统</P>--%>
    <div class="tittle">
        <h1>志愿服务管理系统</h1>
    </div>
</div>
<div class="left">
    <div >
        <ul>
            <li>&nbsp;</li>
            <li><a href="${pageContext.request.contextPath}/toShowAllUsers" target="main">查询所有用户信息</a></li>
            <li><a href="${pageContext.request.contextPath}/toUpdateUserAdmin" target="main">修改用户信息</a></li>
            <%--        <li><a href="" target="main">查询所有志愿活动信息</a></li>--%>
            <%--        <li><a href="" target="main">管理志愿活动</a></li>--%>
        </ul>
    </div>
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
        height: 80px;
        /*background: #66CC99;*/
        background: #3fa7ed;
        position: relative;
    }
    .left{
        width: 200px;
        background: #f1f1f1;
        position: absolute;
        top: 80px;
        bottom: 0;
    }
    .right{
         /*background:#CCFFFF;*/
        position: absolute;
        top: 80px;
        left: 220px;
        bottom: 60px;
        right: 0;
    }
    .foot{
        position: absolute;
        left: 0;
        bottom: 0;
        width: 100%;
        height: 80px;
        background: #3fa7ed;
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
        background: #d0d0d0;
        display: block;
        color: #000;
        padding: 8px 16px;
        text-decoration: none;
    }

    /* 鼠标移动到选项上修改背景颜色 */
    li a:hover {
        background-color: #3fa7ed;
        color: white;
    }
    /*  */
    .tittle{
        color: #e5e5e5;
        position: absolute;
        left:40%;
        top:20px

    }
</style>
</body>
</html>
