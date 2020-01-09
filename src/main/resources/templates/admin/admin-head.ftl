<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
<header class="header white-bg">
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
    </div>
    <!--logo start-->
    <a href="admin-index.ftl" class="logo">山河<span>管理系统</span></a>
    <!--logo end-->
    <div class="nav notify-row" id="top_menu">
        <!--  notification start -->

        <!--  notification end -->
    </div>
    <div class="top-nav ">
        <!--search & user info start-->
        <ul class="nav pull-right top-menu">
            <li>
                <input type="text" class="form-control search" placeholder="搜索">
            </li>
            <!-- user login dropdown start-->
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                    <img alt="" src="${base}/static/img/avatar1_small.jpg">
                    <span class="username">
                        <@security.authentication property="principal.username"></@security.authentication>
                    </span>
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu extended logout">
                    <div class="log-arrow-up"></div>
                    <li><a href="#"><i class=" fa fa-user"></i>个人资料</a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> 修改密码</a></li>
                    <li><a href="#"><i class="fa fa-home"></i> 返回首页</a></li>
                    <li><a href="${base}/logout"><i class="fa fa-key"></i> 退出登录</a></li>
                </ul>
            </li>
            <li class="sb-toggle-right">
                <i class="fa  fa-align-right"></i>
            </li>
            <!-- user login dropdown end -->
        </ul>
        <!--search & user info end-->
    </div>
</header>
