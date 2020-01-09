
<header id="header">
    <div class="center">
        <h1 class="logo">山河旅行社</h1>
        <nav class="link" >
            <h2 style="display:none;">网站导航</h2>
            <ul id="nav">
                <#list titlesList as title>
                    <li class="xs-hidden"><a href="${base}${title.href}"><span >${title.name}</span></a></li>
                </#list>

            </ul>
        </nav>
    </div>
</header>


