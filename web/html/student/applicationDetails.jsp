<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>报名详情表</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
</head>
<style>
    .tr {
        border-bottom: 1px solid #A0A3A5;
        height: 50px;
    }

    .tr > td {
        padding: 10px;
        border-right: 1px solid #A0A3A5;
        width: 16.6%;
    }

    table {
        width: 98%;
        margin: 0px auto;
        border: 1px solid #0f0f0f;
        background-color: #EBEFF1;
    }

    .bm_div2 {
        width: 46%;
        background-color: #ffffff;
        padding: 18px 8px;
        margin: 65px auto;
    }
</style>
<body>
<!--导航栏，整个导航栏都选择了弹性布局-->
<div style="background:rgb(0, 173, 255)">
    <div style="display: flex;justify-content: space-between;padding: 10px">
        <!--学校logo-->
        <img src="images/logo-1.png"/>
        <!--6个操作利用弹性布局-->
        <div class="operate" style="display: flex;flex-direction:row">
            <div style="background: white;padding: 5px">
                <img src="images/head/1.png" height="34" width="17"/>
                <a href="#">
                    <img src="images/head/xygk.png" height="23" width="24"/>
                    <div>注册报名</div>
                </a>
            </div>
            <div style="background: white;padding: 5px">
                <img src="images/head/2.png" height="34" width="18"/>
                <a href="#">
                    <img src="images/head/xygk.png" height="23" width="24"/>
                    <div>网上缴费</div>
                </a>
            </div>
            <div style="background: white;padding: 5px">
                <img src="images/head/3.png" height="34" width="18"/>
                <a href="#">
                    <img src="images/head/xygk.png" height="23" width="24"/>
                    <div>打印准考证</div>
                </a>
            </div>
            <div style="background: white;padding: 5px">
                <img src="images/head/4.png" height="34" width="18"/>
                <a href="#">
                    <img src="images/head/xygk.png" height="23" width="24"/>
                    <div>成绩查询</div>
                </a>
            </div>
            <div style="background: white;padding: 5px">
                <img src="images/head/5.png" height="34" width="18"/>
                <a href="#">
                    <img src="images/head/xygk.png" height="23" width="24"/>
                    <div>录取查询</div>
                </a>
            </div>
            <div style="background: white;padding: 5px">
                <img src="images/head/6.png" height="34" width="18"/>
                <a href="#">
                    <img src="images/head/xygk.png" height="23" width="24"/>
                    <div>应用系统</div>
                </a>
            </div>
        </div>
    </div>
</div>

<!-- 报名详情表 -->
<div style="width:98.5%;margin: 15px auto;border:1px solid #A0A3A5;">
    <div class="bm_div2">
        <p style="text-align: center;font-size: 28px;font-weight: bold"><span>沈阳北软信息职业技术学院单独招生报名登记表</span></p>
        <form action="edit" method="post">
            <table>
                <tr class="tr">
                    <td><span>姓名</span></td>
                    <td><span>${regist.name}</span></td>
                    <td><span>性别</span></td>
                    <c:if test="${regist.sex==1}">
                        <td><span>男</span></td>
                    </c:if>
                    <c:if test="${regist.sex==2}">
                        <td><span>女</span></td>
                    </c:if>
                    <td><span>政治面貌</span></td>
                    <c:if test="${regist.politicalOutlook==1}">
                        <td><span>预备党员</span></td>
                    </c:if>
                    <c:if test="${regist.politicalOutlook==2}">
                        <td><span>共青团员</span></td>
                    </c:if>
                    <c:if test="${regist.politicalOutlook==3}">
                        <td><span>群众</span></td>
                    </c:if>

                </tr>
                <tr class="tr">
                    <td><span>毕业高中</span></td>
                    <td colspan="2"><input type="text" value="${regist.hightSchool}" name="hightSchool" ></td>
                    <td><span>电子邮箱</span></td>
                    <td colspan="2"><input type="text" value="${regist.email}" name="email"></td>
                </tr>
                <tr class="tr">
                    <td><span>身份证号</span></td>
                    <td colspan="2"><span>${regist.identityNumber}</span></td>
                    <td><span>考生号</span></td>
                    <td colspan="2"><span>${regist.examineenNumber}</span></td>
                </tr>
                <tr class="tr">
                    <td><span>通知书邮寄地址</span></td>
                    <td colspan="5"><input type="text" value="${regist.address}" style="width: 80%;" name="address"></td>
                </tr>
                <tr class="tr">
                    <td rowspan="3" colspan="2"><span>联系电话</span></td>
                    <td><span>本人联系电话</span></td>
                    <td colspan="3"><input type="text" value="${regist.phone}" name="phone"></td>
                </tr>
                <tr class="tr">
                    <td><span>家长联系电话</span></td>
                    <td colspan="3"><input type="text" value="${regist.parentPhone}" name="parentPhone"></td>
                </tr>
                <tr class="tr">
                    <td><span>班主任联系电话</span></td>
                    <td colspan="3"><input type="text" value="${regist.headmasterPhone}" name="headmasterPhone"></td>
                </tr>
                <tr class="tr">
                    <td colspan="6" style="text-align: center"><span>报考专业</span></td>
                </tr>
                <tr class="tr">
                    <c:forEach var="item" items="${majorList}">
                        <td colspan="2"><span>${item.majorName}</span></td>
                    </c:forEach>
                </tr>
                <tr class="tr">
                    <td><span>考试科目</span></td>
                    <td colspan="5"><span>语文+数学+英语</span></td>
                </tr>
            </table>
            <button type="submit" class="btn btn-info" style="margin-top: 20px;">提交</button>
        </form>
    </div>
</div>

<!--底部-->
<div style="background: #403f3f;display: flex;justify-content: space-around ; color:#e5e8e2;padding:20px 0 ;font-size: 10px;clear: both;">
    <div>
        <img src="images/logo-1.png"/>
    </div>
    <div class="information">
        <div>学校地址：沈阳市沈北新区沈北路53号 邮编：110045</div>
        <div>版权所有：辽ICP备17002625 电话：024-88928718/8719(招生办公室)</div>
        <div>技术支持：沈阳格微软件有限责任公司 技术支持电话：024-88928703</div>
    </div>
    <div style="display: flex;align-items: center">
        <img src="images/systemApplication/2weimaimg.jpg" style="width: 50px;height: 50px;"/>
        <div style=" padding-left: 10px;">扫描二维码可在手机上登录系统</div>
    </div>
</div>
</body>
</html>
