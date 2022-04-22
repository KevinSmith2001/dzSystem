<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>成绩报告单</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
</head>
<style>
    .tr {
        border-bottom: 1px solid #a7aaac;
        height: 50px;
    }

    .tr > td {
        padding: 10px;
        border-right: 1px solid #a7aaac;
        width: 16.6%;
    }

    table {
        width: 98%;
        margin: 0px auto;
        border: 1px solid #0f0f0f;
        background-color: #EBEFF1;
    }

    .bm_div2 {
        width: 36%;
        background-color: #eff6fd;
        padding: 28px 0px;
        margin: 65px auto;
    }

    .div_1 {
        width: 80%;
        margin: 0px auto;
    }

    .bm_div2 > p {
        text-align: center;
        font-size: 20px;
        font-weight: bold;
    }

    p {
        color: #333486
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

<!-- 成绩报告单 -->
<div style="width:98.5%;margin: 15px auto;min-height: 700px">
    <div class="bm_div2">
        <p><span>沈阳北软信息职业技术学院</span></p>
        <p><span>考生成绩报告单</span></p>
        <div style="width: 100%;text-align: center">
            <img src="images/school_logo.png" height="63" width="64"/>
        </div>
        <div class="div_1">
            <p>准考证号：21111111111111</p>
            <p>身份证号：21111111111111</p>
            <p>姓名：张三</p>
            <p>第一志愿：软件技术</p>
            <p>第二志愿：软件技术</p>
            <p>第三志愿：软件技术</p>
        </div>
        <hr/>
        <div class="div_1"><p>总成绩：111</p></div>
        <form>
            <table>
                <tr class="tr">
                    <td><span>语文</span></td>
                    <td><span>数学</span></td>
                    <td><span>英语</span></td>
                </tr>
                <tr class="tr">
                    <td><span>11</span></td>
                    <td><span>11</span></td>
                    <td><span>11</span></td>
                </tr>
            </table>
        </form>
        <div style="text-align: center;margin-top: 25px"><p>如需对本人考试成绩查询 电话：<span
                style="color: #5bc0de">024-12345678</span></p></div>
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
