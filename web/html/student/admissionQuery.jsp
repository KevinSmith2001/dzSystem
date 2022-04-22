<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>录取查询</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
</head>
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

<!-- 录取查询内容 -->
<div style="min-height: 770px;width:97.5%;margin: 0 auto">
    <div style="margin: 10px auto;border: 1px solid #cccccc;background-color: #e3e3e3;padding: 5px 5px;">
        <P style="margin:3px">提示信息</P>
    </div>
    <div style="height:550px;margin: 15px auto;">
        <div style="margin: 0px auto;background-color: #F5E6B1;border: 1px solid rgba(255, 204, 0, 1);padding: 30px 5px;">
            <p style="color:#C69357">
                <strong>考生:211111111111&nbsp;</strong>身份证号:21111111111111111<br>
                <strong style="color: red">很遗憾，您未被录取</strong><br>
                如有成绩疑问，请与招生办老师联系或<a href="#">查询成绩</a>
            </p>
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
