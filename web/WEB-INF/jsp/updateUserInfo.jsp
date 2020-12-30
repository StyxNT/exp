<%--
  Created by IntelliJ IDEA.
  User: 徐宇航
  Date: 2020/12/27
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <title>注册</title>
</head>
<body>
<div class="updateForm" id="updateForm">

    <el-form  :model="form" label-width="80px">

        <el-form-item label="姓名:">
            <el-input  v-model="form.name" placeholder="请输入姓名"></el-input>
        </el-form-item>

        <el-form-item label="密码:">
            <el-input v-model="form.pswd" placeholder="请输入密码" show-password ></el-input>
        </el-form-item>

        <el-form-item label="性别:">
            <el-radio v-model="form.sex" label="boy">男</el-radio>
            <el-radio v-model="form.sex" label="girl">女</el-radio>
        </el-form-item>

        <el-form-item label="年龄">
            <el-input v-model="form.age" placeholder="请输入年龄"></el-input>
        </el-form-item>

        <el-form-item label="手机号">
            <el-input v-model="form.phone" placeholder="请输入手机号"></el-input>
        </el-form-item>

<%--        <el-form-item label="用户类型:">--%>
<%--            <el-radio v-model="form.type" label="volunteer">志愿者</el-radio>--%>
<%--            <el-radio v-model="form.type" label="teacher">老师</el-radio>--%>
<%--            <el-radio v-model="form.type" label="admin">管理员</el-radio>--%>
<%--        </el-form-item>--%>

        <el-form-item>
            <el-button  type="primary" @click="submit">提交</el-button>
        </el-form-item>


    </el-form>

</div>
<script>


    var vm=new Vue({
        el:"#updateForm",
        data:{
            form:{
                name:"",
                pswd:"",
                sex:"",
                age:"",
                phone:"",
                id:''
            }

        },
        created: function () {
            axios({
                method:'post',
                url:'getUserById'
            }).then((response)=>
            {
                console.log(response.data)
                this.form=response.data
            }).catch(function (error) {
                console.log(error)
            })
            },
        methods: {
            submit:function ()
            {
                axios({
                    method:'post',
                    url:'/doUpdateUser',
                    data: this.form
                }).then(function (response) {
                    console.log(response.data);
                    if(response.data>0)
                        alert("修改成功！")
                    else
                        alert("修改失败")
                })
                    .catch(function (error) {
                        console.log(error);
                        alert("修改失败")
                    });
            }
        }
    })

</script>
<style>
    .updateForm{
        width: 400px;
        position: absolute;
        left: 20%;
        top: 20%;

    }
</style>
</body>
</html>
