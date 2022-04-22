<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>微信缴费</title>
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

<!-- 微信缴费内容 -->
<div style="width:52%;margin: 60px auto;min-height:680px">
    <div style="border:1px solid #a9a9a9;height: 480px">
        <div style="background-color:#e0ebf0;padding: 10px 20px">
            <p style="color: #006600;font-size: 10px;font-weight: bold">沈阳北软信息职业技术学院单独招生报名缴费订单支付</p>
            <p style="font-size: 10px">
                订单号:123456987456321_zr 产品名称:沈阳北软信息职业技术学院单独招生报名缴费
                <span style="float: right">支付金额:<span style="color: #CC0000;font-weight: bold">￥120.0</span></span>
            </p>
        </div>
        <div style="padding: 10px 50px">
            微信扫码支付
        </div>
        <div style="text-align: center">
            <img src="images/qr.png" height="280" width="280"/>
        </div>
        <button type="button" class="btn btn-info" onclick="pay()" style="float: right;margin-right: 40px;margin-top: 20px;">点击模拟缴费
        </button>
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
<script>
function pay(){
    $.ajax({
        url:'pay',
        type:'post',
        dataType:'json',
        success:function (data){
            if(data==true){
                location.href="paySuccess";
            }else{
                location.href="paySuccess?msg=支付失败或已支付！有问题联系管理员！<a href='pay'>点击返回支付</a>";
            }
        }
    });
}
</script>
</body>
</html>
