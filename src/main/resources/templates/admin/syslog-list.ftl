<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${base}/static/img/favicon.png">

    <title>日志管理</title>

    <!-- Bootstrap core CSS -->
    <link href="${base}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/static/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${base}/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!--dynamic table-->
    <link href="${base}/static/assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
    <link href="${base}/static/assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
    <link rel="stylesheet" href="${base}/static/assets/data-tables/DT_bootstrap.css" />
    <!--right slidebar-->
    <link href="${base}/static/css/slidebars.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${base}/static/css/style.css" rel="stylesheet">
    <link href="${base}/static/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="${base}/static/js/html5shiv.js"></script>
    <script src="${base}/static/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<section id="container" class="">
    <!--header start-->
    <#include "${base}/admin/admin-head.ftl"/>
<#--    <#include "${base}/admin/admin-aside.ftl"/>-->
    <aside>
        <div id="sidebar"  class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a id="index-active"  href="${base}/admin/index">
                        <i class="fa fa-dashboard"></i>
                        <span>首页</span>
                    </a>
                </li>
                <@security.authorize access="hasRole('ROLE_ADMIN')">
                    <li class="sub-menu">
                        <a id="sys-active" href="javascript:;" class="active">
                            <i class="fa fa-cogs"></i>
                            <span>系统管理</span>
                        </a>
                        <ul class="sub">

                            <li  id="adminUser-active"><a  href="${base}/admin/user/findAll" >用户管理</a></li>
                            <#--                    <li><a  href="horizontal_menu.html">角色管理</a></li>-->
                            <#--                    <li><a  href="header-color.html">权限管理</a></li>-->
                            <li id="log-active" class="active"><a  href="${base}/sysLog/findAll">日志管理</a></li>
                        </ul>
                    </li>
                </@security.authorize>
                <li class="sub-menu">
                    <a href="javascript:;" >
                        <i class="fa fa-user"></i>
                        <span>旅客管理</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="${base}/traveller/findAllTraveller">旅客资料</a></li>
                        <li><a  href="${base}/traveller/toAddTraveller">添加旅客</a></li>
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;" >
                        <i class="fa fa-truck"></i>
                        <span>商品管理</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="${base}/commodity/findAll">商品查询</a></li>
                        <li><a  href="calendar.html">添加商品</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" >
                        <i class="fa fa-shopping-cart"></i>
                        <span>订单管理</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="form_component.html">订单查询</a></li>
                        <li><a  href="advanced_form_components.html">添加订单</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" >
                        <i class="fa fa-th"></i>
                        <span>公司信息</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="basic_table.html">关于我们</a></li>
                        <li><a  href="responsive_table.html">联系信息</a></li>
                        <li><a  href="dynamic_table.html">公告信息</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" >
                        <i class=" fa fa-bar-chart-o"></i>
                        <span>数据管理</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="morris.html">数据查询</a></li>
                    </ul>
                </li>
                <!--multi level menu start-->
                <!--multi level menu end-->

            </ul>
            <!-- sidebar menu end-->
        </div>

    </aside>

    <!--header end-->
    <!--sidebar start-->

    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!-- page start-->
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            日志管理
                            <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>
             </span>
                        </header>
                        <div class="panel-body">
                            <div class="adv-table">
                                <table  class="display table table-bordered table-striped" id="dynamic-table">
                                    <thead>
                                    <tr>
                                        <th>id</th>
                                        <th>访问时间</th>
                                        <th>操作者用户名</th>
                                        <th>访问ip</th>
                                        <th>访问资源url</th>
                                        <th>执行时长</th>
                                        <th>访问方法</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <#list sysLogs as log>
                                    <tr class="gradeA">
                                        <td>${log_index+1}</td>
                                        <td>${log.visitTimeStr}</td>
                                        <td>${log.username}</td>
                                        <td>${log.ip}</td>
                                        <td>http://localhost:8088${log.url}</td>
                                        <td>${log.executionTime}秒</td>
                                        <td>${log.method}</td>
                                    </tr>
                                    </#list>



                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <!-- page end-->
        </section>
    </section>
    <!--main content end-->
    <!-- Right Slidebar start -->

    <!-- Right Slidebar end -->
    <!--footer start-->
<#include "${base}/admin/admin-foot.ftl"/>
    <!--footer end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->

<script src="${base}/static/js/jquery.js"></script>
<script src="${base}/static/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="${base}/static/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${base}/static/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="${base}/static/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="${base}/static/js/jquery.scrollTo.min.js"></script>
<script src="${base}/static/js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="${base}/static/assets/advanced-datatable/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="${base}/static/assets/data-tables/DT_bootstrap.js"></script>
<script src="${base}/static/js/respond.min.js" ></script>

<!--right slidebar-->
<script src="${base}/static/js/slidebars.min.js"></script>

<!--dynamic table initialization -->
<script src="${base}/static/js/dynamic_table_init.js"></script>


<!--common script for all pages-->
<script src="${base}/static/js/common-scripts.js"></script>


</body>
</html>
