<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  table {
 
    vertical-align: middle;
}
  </style>
</head>

<body>

<div ng-app="myApp" ng-controller="myCtrl">

		<br>
		<div class="container">
		 <div class="dropdown">
		<select  name="users"  ng-options="user.name for user in arrlist" ng-model="userselected" search-filter="customFilter" extra-settings="example15settings">
		<option value="">--Select User--</option>
		</select>
		</div>
		</div>
		<hr>
		<div class="container"> 
		<table class="table table-bordered" cellpadding="1" cellspacing="1" border="1">
		<tr>
		<th>User Name</th>
		<th>User Id</th>
		<th>Country</th>
		<th>Age</th>
		</tr>
		<tbody ng-repeat="x in arrlist|filter:userselected">
		<td>{{x.name}}</td>
		<td>{{x.userid}}</td>
		<td>{{x.country}}</td>
		<td>{{x.age}}</td>
		</tbody>
		</table>
		</div>
		</div>

<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
	
	
	$scope.arrlist = [
		{ userid: 1, name: "Suresh", country: "India" , age:"23"}, 
		{ userid: 2, name: "Rohini", country: "US" , age:"24"},
		{ userid: 3, name: "Praveen", country: "France" , age:"25"},
		{ userid: 4, name: "Ram", country: "Spain" , age:"26"},
		{ userid: 5, name: "Peter", country: "Spain" , age:"36"},
		{ userid: 6, name: "Jade", country: "UK" , age:"35"}
		];
	
});
</script>

</body>
</html>
