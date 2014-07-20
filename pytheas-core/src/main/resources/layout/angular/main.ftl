<#macro body>
Missing body macro for ${nestedpage}
</#macro>

<#include "${nestedpage}">

<html ng-app="main-app">
  <head>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="${RequestContext.pathToRoot}res/css/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="${RequestContext.pathToRoot}res/css/images/favicon.ico" type="image/x-icon">
    <#include "js_css_include.ftl"/>

    <style type="text/css">
      body {
        margin:0 20px;
      }
    </style>
  </head>

  <body>
    <div class="outer-north">
        <#include "header.ftl"/>
    </div>

    <div class="outer-center"><@body/></div>

  </body>
</html>
