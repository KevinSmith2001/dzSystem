<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>应用系统</title>
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>

</head>
<style>
    .div_n {
        text-align: center;
        border: 1px solid #e8e6e6;
        padding: 25px 0px 10px 0;
        margin: 15px 25px;
    }

    .div_n > p {
        padding: 5px 0px;
    }
</style>
<body style="background: #F5F5F5">
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

<!-- 应用系统内容 -->
<div>
    <!-- 提示文字 -->
    <div style="width:98.5%;margin: 10px 14px 5px 14px;border: 1px solid #cccccc;background-color: #E3E3E3;padding: 5px 5px;">
        <P style="margin:3px">系统应用</P>
    </div>
    <!-- 系统模块 -->
    <div style="width:98.5%;min-height: 700px;margin: 0px 14px 5px 14px;">
        <div class="col-sm-12" style="padding:10px 55px 100px 55px;background-color: #ffffff;border: 2px solid #e8e7e7;">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <div class="row show-grid">
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/information.png" height="48" width="48"/>
                            <p><a href="edit">个人信息</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/zm_printing.png" height="48" width="48"/>
                            <p><a href="#">打印准考证</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/payment.png" height="48" width="48"/>
                            <p><a href="#">网上缴费</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/query.png" height="48" width="48"/>
                            <p><a href="#">成绩查询</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/admission.png" height="48" width="48"/>
                            <p><a href="#">录取查询</a></p>
                        </div>
                        <div class="col-md-2 div_n">
                            <img src="images/systemApplication/signout.png" height="48" width="48"/>
                            <p><a href="exit">退出登录</a></p>
                        </div>
                    </div>
                </div>
            </div>
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
