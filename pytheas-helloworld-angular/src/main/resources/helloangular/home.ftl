<#macro body>

<script type="text/javascript">
<#include "home.js"/>
</script>

<div ng-controller="AlertDemoCtrl">
  <alert ng-repeat="alert in alerts" type="{{alert.type}}" close="closeAlert($index)">{{alert.msg}}</alert>
  <button class='btn btn-default' ng-click="addAlert()">Add Alert</button>
</div>


<div ng-controller="BootstrapIntegrationCtrl">
  <table datatable="" dt-options="dtOptions" dt-columns="dtColumns" class="table table-striped table-bordered"></table>
</div>

</#macro>