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
    <!-- Custom styles for this template -->
    <link href="${base}/static/css/style.css" rel="stylesheet">
    <link href="${base}/static/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>

    <![endif]-->
    <style>
        body{
            background-image: url("${base}/static/img/beijingtu1.jpg");
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center center;
        }
    </style>

</head>

  <body class="login-body" >

    <div class="container" >

      <form class="form-signin" method="post" action="${base}/login">
        <h2 class="form-signin-heading">现在登录</h2>
        <div class="login-wrap">
            <input type="text" class="form-control" placeholder="账号" name="username" autofocus>
            <input type="password" class="form-control" placeholder="密码" name="password">
<#--            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>-->
            <label class="checkbox">
                <input type="checkbox"  name="remember"> 记住我
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> 忘记密码?</a>

                </span>
            </label>
            <button class="btn btn-lg btn-login btn-block" type="submit">登录</button>
<#--            <span style="color: red" <#if stu.name=='小明'>登陆失败</#if>>-->
            </span>

        </div>
      </form>

          <!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title">忘记密码 ?</h4>
                      </div>
                      <div class="modal-body">
                          <p>请在下面输入您的电子邮件地址以重置您的密码.</p>
                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                      </div>
                      <div class="modal-footer">
                          <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                          <button class="btn btn-success" type="button">提交</button>
                      </div>
                  </div>
              </div>
          </div>
          <!-- modal -->



    </div>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${base}/static/js/jquery.js"></script>
    <script src="${base}/static/js/bootstrap.min.js"></script>


  </body>
</html>
