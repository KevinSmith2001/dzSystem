<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>缴费查看</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- FONTAWESOME STYLES-->
    <link href="css/font-awesome.css" rel="stylesheet"/>
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
            <div class="page-head-line">缴费查看</div>
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
                            <input type="text" class="form-control"
                                   placeholder="请输入学生身份证号">
                        </div>
                        <div class="form-group">
                            <label class=" control-label">支付状态:</label>
                            <select class="form-control">
                                <option value="">请选择支付状态</option>
                                <option value="1">已支付</option>
                                <option value="2">未支付</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class=" control-label">支付方式:</label>
                            <select class="form-control">
                                <option value="">请选择支付方式</option>
                                <option value="1">微信支付</option>
                                <option value="2">支付宝支付</option>
                                <option value="3">线下缴费</option>
                            </select>
                        </div>
                        <button type="button" class="btn btn-primary" style="float: right;"><span
                                class="glyphicon glyphicon-search"></span>&nbsp;查询
                        </button>
                    </form>
                </div>
            </div>
            <div class="flex_title">
                <div class="page_title">数据列表</div>
                <div style="display: flex;justify-content:flex-start">
                    <a href="#" class="btn btn-default grey_button"><i class="fa fa-download">&nbsp;</i>&nbsp;&nbsp;缴费信息导出
                    </a>
                    <button class="btn btn-default grey_button"><i class="fa fa-refresh">&nbsp;</i>&nbsp;&nbsp;刷新
                    </button>
                </div>
            </div>
            <%--表格--%>
            <table class="table table-bordered">
                <thead>
                <tr style="background: #F5F5F5">
                    <th>序号</th>
                    <th>学生身份证</th>
                    <th>姓名</th>
                    <th>支付状态</th>
                    <th>缴费时间</th>
                    <th>支付金额</th>
                    <th>支付方式</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>21111111111111111111</td>
                    <td>张三</td>
                    <td>已支付</td>
                    <td>这是时间</td>
                    <td>123</td>
                    <td>微信支付</td>
                    <td>
                        <button class="btn btn-default grey_button"><i
                                class="fa fa-edit">&nbsp;</i>&nbsp;缴费
                        </button>
                    </td>
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
            <%--模态框--%>
            <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" style="width: 600px; margin: 140px auto;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">缴费</h4>
                        </div>
                        <div class="modal-body">
                            <form role="form" style=" width: 88%;margin: 0 auto;">
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">身份证号:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-bottom: 15px;">
                                    <label class="col-sm-3 control-label">金额:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" required>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                    <button type="button" class="btn btn-primary">提交</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
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
<script src="js/sweetalert.min.js"></script>
</body>
</html>
