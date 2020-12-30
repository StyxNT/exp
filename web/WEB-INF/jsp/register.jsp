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
    <div class="registerForm" id="registerForm">

        <el-form :model="form" ref="form" :rules="rules" label-width="90px">

            <el-form-item label="姓名:" prop="name">
                <el-input  v-model="form.name" placeholder="请输入姓名" ></el-input>
            </el-form-item>

            <el-form-item label="密码:" prop="pswd">
                <el-input v-model="form.pswd" placeholder="请输入密码" show-password ></el-input>
            </el-form-item>

            <el-form-item label="确认密码" prop="checkPass">
                <el-input type="password" v-model="form.checkPass" placeholder="请再次输入密码" show-password ></el-input>
            </el-form-item>

            <el-form-item label="性别:" prop="sex">
                <el-radio v-model="form.sex" label="boy">男</el-radio>
                <el-radio v-model="form.sex" label="girl">女</el-radio>
            </el-form-item>

            <el-form-item label="年龄" prop="age">
                <el-input v-model="form.age" placeholder="请输入年龄" ></el-input>
            </el-form-item>

            <el-form-item label="手机号" prop="phone">
                <el-input v-model="form.phone" placeholder="请输入手机号" ></el-input>
            </el-form-item>

            <el-form-item label="用户类型:" prop="type">
                <el-radio v-model="form.type" label="volunteer">志愿者</el-radio>
                <el-radio v-model="form.type" label="teacher">老师</el-radio>
                <el-radio v-model="form.type" label="admin">管理员</el-radio>
            </el-form-item>

            <el-form-item>
                <el-button  type="primary" @click="submit">提交</el-button>
                <el-button @click="resetForm('form')">重置</el-button>
            </el-form-item>


        </el-form>

    </div>
    <script>

        var vm=new Vue({
            el:"#registerForm",
            data:{
                form:{
                    name:"",
                    pswd:"",
                    checkPass:'',
                    sex:"",
                    age:"",
                    phone:"",
                    type:""
                },

                rules:{
                    name: [
                        { required: true, message: '请输入你的名字', trigger: 'blur' },
                        { min: 1, max: 10, message: '长度在 1 到 10 个字符', trigger: 'blur' }
                    ],
                    pswd: [
                        { required:true, message:'请输入密码', trigger: 'blur' },
                    ],
                    checkPass: [
                        { required:true, message:'请再次输入密码', trigger: 'blur' }
                    ],
                    // age: [
                    //     {type: 'number', message: '年龄必须为数字值',trigger: 'change'}
                    // ],
                    // phone: [
                    //     // { required: true,message: '手机号不能为空',trigger: 'blur'},
                    //     { required:true, min: 11, max: 11, type:'number', message: '长度必须为11个字符', trigger: 'change' }
                    // ],
                    type:[
                        {required:true,message:'请选择账户类型',trigger: 'blur'}
                    ]
                },

            },
            methods:{
                submit: function () {
                    console.log(JSON.stringify(this.form))
                    if(this.form.pswd===this.form.checkPass){
                        axios({
                            method: 'post',
                            url: '/doRegister',
                            data: this.form
                        })
                            .then(function (response) {
                                if(response.data>0)
                                    alert("修改成功！")
                                else
                                    alert("修改失败")
                            })
                            .catch(function (error) {
                                console.log(error);
                                alert("修改失败")
                            });
                    }else {
                        alert("两次输入的密码不相同！")
                    }

                },
                resetForm:function (formName) {
                    this.$refs[formName].resetFields();
                }
            }
        })

    </script>
    <style>
        .registerForm{
            width: 400px;
            position: absolute;
            left: 20%;
            top: 20%;

        }
    </style>
</body>
</html>
