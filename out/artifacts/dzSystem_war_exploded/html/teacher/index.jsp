<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>教师端-首页</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <!--CUSTOM BASIC STYLES-->
    <link href="css/basic.css" rel="stylesheet"/>
    <!--CUSTOM MAIN STYLES-->
    <link href="css/custom.css" rel="stylesheet"/>
</head>
<body>
<div id="wrapper">
    <%--教师端导航--%>
    <nav class="navbar navbar-default navbar-cls-top " role="navigation"
         style="margin-bottom: 0;padding: 10px 0 10px 17px;">
        <img src="images/logo-2.png" height="61" width="370"/>
        <div class="header-right">
            <a href="#" style="color: white;display: flex;align-items: center"><span
                    class="glyphicon glyphicon-off"></span><b>&nbsp;退出</b></a>
        </div>
    </nav>
    <!-- /. 左操作菜单 -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <a class="active-menu" href="index.jsp"><i class="fa fa-angellist"></i>首页</a>
                </li>

                <!--缴费-->
                <li>
                    <a href="#"><i class="fa fa-cny "></i>缴费 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#"><i class="fa fa-eye"></i>缴费查看</a>
                        </li>
                    </ul>
                </li>
                <!--新闻管理-->
                <li>
                    <a href="#"><i class="fa fa-chain-broken"></i>新闻管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#"><i class="fa fa-certificate"></i>新闻管理</a>
                        </li>
                    </ul>
                </li>
                <!--考生管理-->
                <li>
                    <a href="#"><i class="fa fa-user"></i>考生管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#"><i class="fa fa-user"></i>考生信息管理</a>
                        </li>
                    </ul>
                </li>
                <!--录取管理-->
                <li>
                    <a href="#"><i class="	fa fa-graduation-cap"></i>录取管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#"><i class="fa fa-graduation-cap"></i>录取管理 </a>
                        </li>
                    </ul>
                </li>
                <!--考场管理-->
                <li>
                    <a href="#"><i class="fa fa-desktop "></i>考场管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">

                        <li>
                            <a href="#"><i class="fa fa-desktop "></i>考场管理 </a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-list-alt"></i>排考管理</a>
                        </li>
                    </ul>
                </li>
                <!--统计管理-->
                <li>
                    <a href="#"><i class="	fa fa-bar-chart-o"></i>统计管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o"></i>报考专业信息统计 </a>
                        </li>
                    </ul>
                </li>
                <!--图表统计-->
                <li>
                    <a href="#"><i class="	fa fa-area-chart"></i>图表汇总 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#"><i class="fa fa-area-chart"></i>图表汇总 </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    <!-- /. 左操作菜单 -->
    <div id="page-wrapper">
        <div id="page-inner2">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">首页</h4>
                </div>
            </div>
            <div style="text-align: center;padding: 250px 0">
                <h1 style="color: #00ADFF;font-weight: bold;font-size: 50px">欢迎使用管理后台</h1>
                <h4 style="color: #00ADFF;">请点击左侧菜单进行相关操作</h4>
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<%--页脚--%>
<div id="footer-sec">
    <a>CopyRight © 2016-2017 沈阳格微软件有限责任公司 All Rights Reserved. </a>
</div>
<!-- /. FOOTER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="js/bootstrap.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="js/custom.js"></script>
</body>
</html>
