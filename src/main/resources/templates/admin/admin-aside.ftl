<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />

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
<script>

    //owl carousel


</script>
