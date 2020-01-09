<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${base}/static/img/favicon.png">

    <title>后台管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="${base}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/static/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${base}/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="${base}/static/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="${base}/static/css/owl.carousel.css" type="text/css">

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

  <!--weather statement start-->


  <section id="container" >
      <#include "${base}/admin/admin-head.ftl"/>
      <#include "${base}/admin/admin-aside.ftl"/>
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <section class="panel">
                  <div class="weather-bg">
                      <div class="panel-body">
                          <div class="row">
                              <div class="col-xs-6">
                                  <i class="fa fa-cloud"></i>
                                  柳州
                              </div>
                              <div class="col-xs-6">
                                  <div class="degree">
                                      24°
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </section>
              <!--state overview start-->
              <div class="row state-overview">
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol terques">
                              <i class="fa fa-user"></i>
                          </div>
                          <div class="value">
                              <h1 class="count">
                                  0
                              </h1>
                              <p>用户数量</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol red">
                              <i class="fa fa-tags"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count2">
                                  0
                              </h1>
                              <p>当日访问数量</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol yellow">
                              <i class="fa fa-shopping-cart"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count3">
                                  0
                              </h1>
                              <p>订单数量</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol blue">
                              <i class="fa fa-bar-chart-o"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count4">
                                  0
                              </h1>
                              <p>商品数量</p>
                          </div>
                      </section>
                  </div>
              </div>
              <!--state overview end-->

              <div class="row">
                  <div class="col-lg-8">
                      <!--custom chart start-->
                      <div class="border-head">
                          <h3>热门订单树状图</h3>
                      </div>
                      <div class="custom-bar-chart">
                          <ul class="y-axis">
                              <li><span>100</span></li>
                              <li><span>80</span></li>
                              <li><span>60</span></li>
                              <li><span>40</span></li>
                              <li><span>20</span></li>
                              <li><span>0</span></li>
                          </ul>
                          <div class="bar">
                              <div class="title">曼谷</div>
                              <div class="value tooltips" data-original-title="80%" data-toggle="tooltip" data-placement="top">100%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">北京</div>
                              <div class="value tooltips" data-original-title="50%" data-toggle="tooltip" data-placement="top">50%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">上海</div>
                              <div class="value tooltips" data-original-title="40%" data-toggle="tooltip" data-placement="top">40%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">兰州</div>
                              <div class="value tooltips" data-original-title="55%" data-toggle="tooltip" data-placement="top">55%</div>
                          </div>
                          <div class="bar">
                              <div class="title">桂林</div>
                              <div class="value tooltips" data-original-title="20%" data-toggle="tooltip" data-placement="top">20%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">南京</div>
                              <div class="value tooltips" data-original-title="39%" data-toggle="tooltip" data-placement="top">39%</div>
                          </div>
                          <div class="bar">
                              <div class="title">广州</div>
                              <div class="value tooltips" data-original-title="75%" data-toggle="tooltip" data-placement="top">75%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">苏州</div>
                              <div class="value tooltips" data-original-title="45%" data-toggle="tooltip" data-placement="top">45%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">深圳</div>
                              <div class="value tooltips" data-original-title="50%" data-toggle="tooltip" data-placement="top">50%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">北海</div>
                              <div class="value tooltips" data-original-title="42%" data-toggle="tooltip" data-placement="top">42%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">海南</div>
                              <div class="value tooltips" data-original-title="60%" data-toggle="tooltip" data-placement="top">60%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">南宁</div>
                              <div class="value tooltips" data-original-title="90%" data-toggle="tooltip" data-placement="top">90%</div>
                          </div>
                      </div>
                      <!--custom chart end-->
                  </div>
                  <div class="col-lg-4">
                      <!--new earning start-->
                      <div class="panel terques-chart">
                          <div class="panel-body chart-texture">
                              <div class="chart">
                                  <div class="heading">
                                      <span>星期五</span>
                                      <strong>$ 57,00 | 15%</strong>
                                  </div>
                                  <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,564,455]"></div>
                              </div>
                          </div>
                          <div class="chart-tittle">
                              <span class="title">收入</span>
                              <span class="value">
                                  <a href="#" class="active">Market</a>
                                  |
                                  <a href="#">Referal</a>
                                  |
                                  <a href="#">Online</a>
                              </span>
                          </div>
                      </div>
                      <!--new earning end-->

                      <!--total earning start-->
                      <div class="panel green-chart">
                          <div class="panel-body">
                              <div class="chart">
                                  <div class="heading">
                                      <span>June</span>
                                      <strong>23 Days | 65%</strong>
                                  </div>
                                  <div id="barchart"></div>
                              </div>
                          </div>
                          <div class="chart-tittle">
                              <span class="title">Total Earning</span>
                              <span class="value">$, 76,54,678</span>
                          </div>
                      </div>
                      <!--total earning end-->
                  </div>
              </div>

          </section>
      </section>

      <#include "${base}/admin/admin-foot.ftl"/>
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="${base}/static/js/jquery.js"></script>
  <script src="${base}/static/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="${base}/static/js/jquery.dcjqaccordion.2.7.js"></script>
  <script src="${base}/static/js/jquery.scrollTo.min.js"></script>
  <script src="${base}/static/js/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="${base}/static/js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="${base}/static/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="${base}/static/js/owl.carousel.js" ></script>
  <script src="${base}/static/js/jquery.customSelect.min.js" ></script>
  <script src="${base}/static/js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="${base}/static/js/slidebars.min.js"></script>

  <!--common script for all pages-->
  <script src="${base}/static/js/common-scripts.js"></script>

  <!--script for this page-->
  <script src="${base}/static/js/sparkline-chart.js"></script>
  <script src="${base}/static/js/easy-pie-chart.js"></script>
  <script src="${base}/static/js/count.js"></script>


  <script>

      //owl carousel

      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true,
			  autoPlay:true

          });
          $("#index-active").addClass("active");

      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

      $(window).on("resize",function(){
          var owl = $("#owl-demo").data("owlCarousel");
          owl.reinit();
      });

  </script>

  </body>
</html>
