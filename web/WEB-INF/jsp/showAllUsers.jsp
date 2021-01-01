<%--
  Created by IntelliJ IDEA.
  User: 徐宇航
  Date: 2021/1/1
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>

<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/http_unpkg.com_element-ui_lib_theme-chalk_index.css">--%>
<%--    <script src="${pageContext.request.contextPath}/static/http_cdn.jsdelivr.net_npm_vue_dist_vue.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/static/http_unpkg.com_element-ui_lib_index.js"></script>--%>
    <script src="${pageContext.request.contextPath}/static/http_unpkg.com_axios_dist_axios.js"></script>

    <title>显示所有用户信息</title>
</head>
<body>
<div id="userTable" class="userTable">
    <el-table :data="tableData" style="width: 100%" :default-sort = "{prop: 'id'}">
        <el-table-column
                fixed

                prop="id"
                label="用户id"
                sortable
                align="center"
                width="70">
        </el-table-column>
        <el-table-column
                prop="name"
                label="姓名"
                sortable
                align="center"
                width="110">
        </el-table-column>
        <el-table-column
                prop="age"
                label="年龄"
                sortable
                align="center"
                width="60">
        </el-table-column>
        <el-table-column
                prop="sex"
                label="性别"
                sortable
                align="center"
                width="60">
        </el-table-column>
        <el-table-column
                prop="phone"
                label="手机号"
                align="center"
                width="140">
        </el-table-column>
        <el-table-column
                prop="type"
                label="用户类型"
                sortable
                align="center"
                width="100">
        </el-table-column>

        <el-table-column
<%--                fixed="right"--%>
                align="center"
                label="操作"
                width="80">

            <template slot-scope="scope">
                <el-button
                        @click.native.prevent="deleteRow(scope.$index,tableData)"
                        type="text"
                        size="middle">
                    移除
                </el-button>
            </template>

        </el-table-column>
    </el-table>



</div>
<script>


    var vm=new Vue({
        el:"#userTable",
        data:{
            tableData: []
        },
        created: function () {
            axios({
                method:'post',
                url:'/getAllUsers'
            }).then((response)=>
            {
                console.log(response.data)
                this.tableData=response.data
            }).catch(function (error) {
                console.log(error)
                alert("查询失败!")
            })
        },
        methods:{
            deleteRow(index,rows) {
                // rows.splice(index, 1);
                // console.log("index:"+index)
                // console.log(this.tableData[index].id)
                axios({
                    method:'post',
                    url:'/doDeleteUser',
                    data:{
                        id:this.tableData[index].id
                    }
                }).then((response)=>
                {
                    if(response.data>0) {
                        alert("删除成功")
                        rows.splice(index, 1);
                    }
                    else
                        alert("删除失败")
                }).catch(function (error) {
                    console.log(error)
                    alert("删除失败")
                })
            }
        }
    })

</script>

<style>
    .userTable{
        /*width: 400px;*/
        position: absolute;
        left: 10%;
        top: 20px;
        bottom: 10%;

    }
</style>

</body>
</html>
