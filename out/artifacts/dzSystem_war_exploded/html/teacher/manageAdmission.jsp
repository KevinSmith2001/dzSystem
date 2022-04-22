<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>录取管理</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <!--PAGE LEVELC STYLES-->
    <link href="css/invoice.css" rel="stylesheet"/>
    <!--CUSTOM BASIC STYLES-->
    <link href="css/basic.css" rel="stylesheet"/>
    <!--CUSTOM MAIN STYLES-->
    <link href="css/custom.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/sweetalert.css">
</head>
<body>
<div id="wrapper">
    <%--导航--%>
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
        <div id="page-inner">
            <div class="page-head-line">录取管理</div>
        </div>
        <%--表单--%>
        <div id="page-inner2">
            <div class="row" style="border-bottom: 1px dashed #d4dcd9;">
                <div class="col-md-12">
                    <div class="page-subhead-line">数据筛选</div>
                </div>
            </div>
            <%--表单--%>
            <div class="row" style="border-bottom: 1px dashed #d4dcd9;padding: 13px 0;">
                <div class="col-md-12">
                    <form role="form" class="form-inline">
                        <div class="form-group">
                            <label class="control-label">学生身份证号:</label>
                            <input type="text" class="form-control" placeholder="请输入学生身份证号">
                        </div>
                        <div class="form-group">
                            <label class="control-label">准考证:</label>
                            <input type="text" class="form-control"
                                   placeholder="请输入准考证号">
                        </div>
                        <div class="form-group">
                            <label class="control-label">录取专业:</label>
                            <select class="form-control">
                                <option value="">请选择录取专业</option>
                                <option value="1">软件技术</option>
                                <option value="1">软件技术</option>
                                <option value="1">软件技术</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">录取状态:</label>
                            <select class="form-control">
                                <option value="">请选择录取状态</option>
                                <option value="1">未录取</option>
                                <option value="2">已录取</option>
                            </select>
                        </div>
                        <button type="button" class="btn btn-primary" style="float: right;"><span
                                class="	glyphicon glyphicon-search"></span>&nbsp;查询
                        </button>
                        <button type="button" class="btn btn-primary"
                                style="background: #4cd964;border-color: #4cd694;float: right;margin-right: 15px;">
                            <span class="glyphicon glyphicon-ok"></span>
                            &nbsp;一键录取
                        </button>
                    </form>
                </div>
            </div>
            <div class="flex_title">
                <div class="page_title">数据列表</div>
                <div style="display: flex;justify-content:flex-start">
                    <button class="btn btn-default grey_button"><i class="fa fa-refresh">&nbsp;</i>&nbsp;&nbsp;刷新
                    </button>
                </div>
            </div>
            <%--表格--%>
            <table class="table table-bordered">
                <thead>
                <tr style="background: #F5F5F5">
                    <th>序号</th>
                    <th>身份证号</th>
                    <th>准考证号</th>
                    <th>语文成绩</th>
                    <th>数学成绩</th>
                    <th>外语成绩</th>
                    <th>总分</th>
                    <th>录取专业</th>
                    <th>录取状态</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>211111111111111111</td>
                    <td>211111111111111111</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                    <td>软件技术</td>
                    <td>未录取</td>
                </tr>
                </tbody>
            </table>
            <%--分页--%>
            <div class="paging">
                <div class="record">总共1条记录</div>
                <ul class="pagination">
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                </ul>
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
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
<script src="js/jquery.form.js"></script>
<script src="js/sweetalert.min.js"></script>
</body>
</html>
