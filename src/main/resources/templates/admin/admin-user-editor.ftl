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

    <title>修改管理员信息</title>

    <!-- Bootstrap core CSS -->
    <link href="${base}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/static/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${base}/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${base}/static/assets/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/assets/bootstrap-colorpicker/css/colorpicker.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/assets/bootstrap-daterangepicker/daterangepicker.css" />
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

                              <li class="active" id="adminUser-active"><a  href="${base}/admin/user/findAll" >用户管理</a></li>
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
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             修改管理员信息
                          </header>
                          <div class="panel-body">
                              <form class="form-horizontal tasi-form" method="post" action="${base}/admin/user/update">
                                  <input type="hidden" name="id" value="${userInfo.id}">
                                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">ID</label>
                                      <div class="col-sm-10">
                                          <input class="form-control" name="id" id="disabledInput" type="text" value="${userInfo.id}" disabled>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">姓名</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="name" value="${userInfo.name}">
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">用户名</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="username" value="${userInfo.username}">
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">性别</label>
                                      <div class="col-sm-10">
                                          <div class="radios">
                                              <label class="label_radio" for="radio-03">
                                                  <input name="sex" id="radio-03" value="1" type="radio"  /> 男
                                              </label>
                                              <label class="label_radio" for="radio-04">
                                                  <input name="sex" id="radio-04" value="2" type="radio" /> 女
                                              </label>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">角色</label>
                                      <div class="col-sm-10">
                                          <div class="radios">
                                              <label class="label_radio" for="radio-01">
                                                  <input name="role.roleName" id="radio-01" value="1" type="radio"  /> 超级管理员
                                              </label>
                                              <label class="label_radio" for="radio-02">
                                                  <input name="role.roleName" id="radio-02" value="2" type="radio" /> 管理员
                                              </label>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">电话号码</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="phoneNum" value="${userInfo.phoneNum}">
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">状态</label>
                                      <div class="col-sm-10">
                                          <div class="radios">
                                              <!--                                          <div class="switch" >-->
                                              <!--                                              <input id="radio-05" name="ttkk" value="1" type="checkbox" />-->
                                              <!--                                          </div>-->
                                              <label class="label_radio" for="radio-05">
                                                  <input name="status" id="radio-05" value="1" type="radio"  /> 开启
                                              </label>
                                              <label class="label_radio" for="radio-06">
                                                  <input name="status" id="radio-06" value="2" type="radio" /> 未开启
                                              </label>
                                          </div>

                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <div class="col-sm-10" style="text-align:center;">
                                          <button class="btn btn-primary" type="submit" >提交</button>
                                          <button class="btn" type="button" onclick="history.go(-1);" >返回</button>
                                      </div>
                                  </div>

                              </form>

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
    <script src="${base}/static/js/bootstrap.min.js"></script>
    <script src="${base}/static/js/jquery.scrollTo.min.js"></script>
    <script src="${base}/static/js/jquery.nicescroll.js" type="text/javascript"></script>

    <script src="${base}/static/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script class="include" type="text/javascript" src="${base}/static/js/jquery.dcjqaccordion.2.7.js"></script>

  <!--custom switch-->
  <script src="${base}/static/js/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="${base}/static/js/jquery.tagsinput.js"></script>
  <!--custom checkbox & radio-->
  <script type="text/javascript" src="${base}/static/js/ga.js"></script>

  <script type="text/javascript" src="${base}/static/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="${base}/static/assets/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="${base}/static/assets/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="${base}/static/assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
  <script type="text/javascript" src="${base}/static/assets/ckeditor/ckeditor.js"></script>

  <script type="text/javascript" src="${base}/static/assets/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
  <script src="${base}/static/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${base}/static/js/slidebars.min.js"></script>


  <!--common script for all pages-->
  <script src="${base}/static/js/common-scripts.js"></script>

  <!--script for this page-->
  <script src="${base}/static/js/form-component.js"></script>
  <script>
      $(document).ready(function () {
          var a = "${userInfo.sex}";
          if (a == "男") {
              $("#radio-03").prop('checked', 'ture');
          } else {
              $("#radio-04").prop('checked', 'ture');
          }
          var b="${userInfo.role.roleName}";
          if (b == "超级管理员") {
              $("#radio-01").prop('checked', 'ture');
          } else {
              $("#radio-02").prop('checked', 'ture');
          }
          var c="${userInfo.status}";
          if (c == "开启") {
              $("#radio-05").prop('checked', 'ture');
          } else {
              $("#radio-06").prop('checked', 'ture');
          }

          if ($("#radio-03").attr('checked')) {
              $("#radio-03").val("男");
          }else if ($("#radio-04").attr('checked')) {
              $("#radio-04").val("女");
          }
          if ($("#radio-01").attr('checked')) {
              $("#radio-01").val("超级管理员");
          }else if ($("#radio-02").attr('checked')) {
              $("#radio-02").val("管理员");
          }
          if ($("#radio-05").attr('checked')) {
              $("#radio-05").val("开启");
          }else if ($("#radio-06").attr('checked')) {
              $("#radio-06").val("未开启");
          }
      });
  </script>

  </body>
</html>
