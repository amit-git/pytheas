<#assign header_on_the_right>
    <#if Explorer.cmcEnabled>
        <form class="navbar-form pull-right">
            <input id="cmc" class="span2" placeholder="CMC"></input>
        </form>
        <ul class="nav pull-right">
            <li class="divider-vertical"></li>
        </ul>
    </#if>
    <#if Explorers.hasAuthProvider>
        <div class="pull-right" style="padding: 12px 20px 0px 20px">
            <#if Principal?exists && Principal.name?exists>
                Welcome, ${Principal.name} <a href="${RequestContext.pathToRoot}logout">logout</a>
            <#else>
                <a href='${RequestContext.pathToRoot}login'>login</a>
            </#if>
        </div>
        <ul class="nav pull-right">
            <li class="divider-vertical"></li>
        </ul>
     </#if>
</#assign>

<div id="layoutheader" class="env-${Global.environmentName}">
    <div class="navbar">
      <div class="navbar-inner">
        <#if Explorers.explorers?size &gt; 1>
        <a class="brand" href="${RequestContext.pathToRoot}">${Global.applicationName} ${Global.applicationVersion}</a>
            <div class="container">
                <form class="navbar-form pull-left form-inline span6">
                    <#if Global.crosslinks?size!=0>
                        <select id="nf-regions" class="span2">
                            <#list Global.crosslinks?keys as name>
                                <#assign dc=Global.crosslinks[name]/>
                                <option value="${dc.region}.${dc.env}" href="${dc.href}" region="${dc.region}" env="${dc.env}">${dc.title}</option>
                            </#list>
                        </select>
                    <#else>
                        <span class="brand left">${Global.currentRegion}.${Global.environmentName}</span>
                    </#if>

                    <#if Explorer?exists && Explorer.name?length!=0>
                        <select id="nf-modules" class="">
                        <#list Explorers.explorers as m>
                            <option <#if Explorer.name==m.name>selected </#if>value="${m.home}" <#if m.isSecure>secure="true"</#if>><#if m.title?exists>${m.title}<#else>${m.name} (missing title)</#if></option>
                        </#list>
                        </select>
                    </#if>
                </form>
                ${header_on_the_right}
            </div>
        <#else>
            <div class="left">
                <h3 style="padding-top:5px">${Global.applicationName} ${Global.applicationVersion} ${Global.currentRegion}.${Global.environmentName}</h3>
            </div>
            <div class="right">
                ${header_on_the_right}
            </div>
        </#if>
      </div>
    </div>
</div>
