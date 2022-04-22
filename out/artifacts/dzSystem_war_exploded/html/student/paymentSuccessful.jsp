<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>缴费成功</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<style>
    .div_x {
        font-size: 12px;
        /*font-weight: bold;*/
        width: 95%;
        margin: 0px auto;
        border-bottom: 1px dotted #CCCCCC;
        border-top: 1px dotted #CCCCCC;
        padding: 10px 0px;
    }
</style>
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

<!-- 缴费成功内容 -->
<div style="width:1200px;margin: 50px auto;min-height: 680px">
    <div style="width:98.5%;margin: 15px auto;border-bottom: 1px solid #cccccc;padding: 5px 0;">
        <strong style="color: #3366FF;font-size: 20px">报名缴费</strong>
    </div>
    <div style="width:98.5%;margin: 15px auto;border: 1px solid rgba(255, 204, 0, 1);background-color:#F5E6B1;padding: 10px 5px;">
        <P style="margin:3px;">根据物价局文件规定，单招注册报名<span style="color:red;font-weight: bold">考务费用按照120元</span>收取。</P>
    </div>
    <div style="width:98.5%;margin: 0px auto;background-color:#ffffff;border: 1px solid rgba(204, 204, 204, 1);height: 300px">
        <div style="background-color:#EAFFEA;padding: 20px;">
            <img style="margin-right: 28px" src="images/systemApplication/correct.png" height="30" width="30"/>
            您已成功缴费
        </div>
        <div style="padding-left: 85px;margin: 16px 0px;font-size: 12px;">
            <p>缴费金额：<strong style="color:#a90000">120</strong></p>
            <p>缴费时间：<strong style="color:#a90000">缴费时间</strong></p>
        </div>
        <div class="div_x">
            <img src="images/systemApplication/safe.png" height="18" width="18"/>
            <strong style="color: rgba(255,136,15,0.65);padding-right: 10px">安全提醒:</strong><span
                style="color: rgba(203,137,22,0.8)">缴费后，</span>
            <span style="color: #a90000">用QQ给您发送链接办理退款的都是骗子！</span>
            <span style="color: rgba(203,137,22,0.8)">本网站不存在系统升级，缴费异常等问题，谨防假冒客服诈骗电话</span>
        </div>
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
