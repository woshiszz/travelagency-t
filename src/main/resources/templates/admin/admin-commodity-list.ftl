<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>商品列表</title>

    <!-- Bootstrap core CSS -->
    <link href="${base}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/static/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${base}/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
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
<#include "${base}/admin/admin-head.ftl"/>

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
                          <a id="sys-active" href="javascript:;" >
                              <i class="fa fa-cogs"></i>
                              <span>系统管理</span>
                          </a>
                          <ul class="sub">

                              <li  id="adminUser-active"><a  href="${base}/admin/user/findAll" >用户管理</a></li>
                              <#--                    <li><a  href="horizontal_menu.html">角色管理</a></li>-->
                              <#--                    <li><a  href="header-color.html">权限管理</a></li>-->
                              <li id="log-active"><a  href="${base}/sysLog/findAll">日志管理</a></li>
                          </ul>
                      </li>
                  </@security.authorize>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-user"></i>
                          <span>旅客管理</span>
                      </a>
                      <ul class="sub">
                          <li ><a  href="${base}/traveller/findAllTraveller">旅客资料</a></li>
                          <li><a  href="${base}/traveller/toAddTraveller">添加旅客</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" class="active" >
                          <i class="fa fa-truck"></i>
                          <span>商品管理</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="${base}/commodity/findAll">商品查询</a></li>
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
      <script>

          //owl carousel


      </script>


      <section id="main-content">
          <section class="wrapper site-min-height">
              <!-- page start-->
              <section class="panel">
                  <header class="panel-heading">
                      商品管理
                  </header>
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
<#--                              <div class="btn-group">-->
<#--                                  <button id="editable" class="btn green" onclick="location.href='${base}/admin/user/addfreemarker'">-->
<#--                                      添加新用户 <i class="fa fa-plus"></i>-->
<#--                                  </button>-->
<#--                              </div>-->
                              <div class="btn-group pull-right">
                                  <button class="btn dropdown-toggle" data-toggle="dropdown">工具<i class="fa fa-angle-down"></i>
                                  </button>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="#">打印</a></li>
                                      <li><a href="#">保存为PDF</a></li>
                                      <li><a href="#">导出到Excel</a></li>
                                  </ul>
                              </div>
                          </div>
<#--                          <div class="space15"></div>-->
                          <div id="user_table" class="table-responsive" >

                          <table class="table table-striped table-hover table-bordered" id="editable-sample">
                              <thead>
                              <tr>
                                  <th>ID</th>
                                  <th>编号</th>
                                  <th>标题</th>
                                  <th>价格</th>
                                  <th>线路</th>
                                  <th>创建时间</th>
                                  <th>状态</th>
                                  <th>更多</th>
                                  <th>删除</th>
                              </tr>
                              </thead>
                              <tbody>
                              <#list commodityList as commodity >
                              <tr class="">
                                  <td>${commodity_index+1}</td>
                                  <td>${commodity.id}</td>
                                  <td>${commodity.name}</td>
                                  <td>${commodity.preferentialPrice}</td>
                                  <td>${commodity.departureCity} -- ${commodity.arrivalCity}</td>
                                  <td>${commodity.createTimeStr}</td>
                                  <td style="color: <#if commodity.statusStr='开启'>#2ECC71<#else >#E74C3C</#if>">${commodity.statusStr}</td>


                                  <!--                                  <td class="center">super user</td>-->
<#--                                  <td><a class="edit" href="${base}/admin/user/findById?id=${user.id}">编辑</a></td>-->
<#--                                  <td><a class="delete" href="javascript:;">删除</a></td>-->
                                  <td><a  href="${base}/commodity/findCommodityById?id=${commodity.id}">详情</a></td>
<#--                                  <td><a  href="javascript:;" onclick="return del()">删除</a></td>-->

                                  <td>
                                      <a  data-toggle="modal" href="#myModal${commodity_index+1}" type="delete">
                                          删除
                                      </a>
                                      <div class="modal fade" id="myModal${commodity_index+1}" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
                                          <div class="modal-dialog">
                                              <div class="modal-content">
                                                  <div class="modal-header">
                                                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                      <h4 class="modal-title">警告</h4>
                                                  </div>
                                                  <div class="modal-body">

                                                      确定要删除吗？

                                                  </div>
                                                  <div class="modal-footer">
                                                      <button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
                                                      <button class="btn btn-success" type="button" onclick="location.href='${base}/commodity/deleteCommodityById?id=${commodity.id}'">确定</button>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </td>
                              </tr>
                              </#list>

                              </tbody>
                          </table>

                          </div>
                      </div>
                  </div>
              </section>
              <!-- page end-->
          </section>
      </section>

      <!--main content end-->

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
    <script type="text/javascript" src="${base}/static/assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${base}/static/assets/data-tables/DT_bootstrap.js"></script>
    <script src="${base}/static/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${base}/static/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="${base}/static/js/common-scripts.js"></script>

      <!--script for this page only-->
      <script src="${base}/static/js/editable-table.js"></script>

      <!-- END JAVASCRIPTS -->
      <script>
          jQuery(document).ready(function() {
              EditableTable.init();
              // var a=$('.statusCss').text();
              // console.log(a);
              // if (a=="开启") {
              //     $('.statusCss').css("color", "#2ECC71");
              // } else {
              //     $('.statusCss').css("color", "#E74C3C");
              // }

          });




      </script>


  </body>
</html>
