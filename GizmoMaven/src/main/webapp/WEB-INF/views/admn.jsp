<!DOCTYPE html>  
 <html>  
 <head>  
   <title>Angular JS table sort and filter example </title>  
   <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">  
   <script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>  
   <script>  
     var app = angular.module('MyForm', ['ui.bootstrap', 'ngResource']);  
     app.controller('myCtrl', function ($scope) {  
       $scope.predicate = 'name';  
       $scope.reverse = true;  
       $scope.currentPage = 1;  
       $scope.order = function (predicate) {  
         $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;  
         $scope.predicate = predicate;  
       };  
       $scope.students = ${myJson};  //This code is extracting the string object being sent from controller
       $scope.totalItems = $scope.students.length;  
       $scope.numPerPage = 5;  
       $scope.paginate = function (value) {  
         var begin, end, index;  
         begin = ($scope.currentPage - 1) * $scope.numPerPage;  
         end = begin + $scope.numPerPage;  
         index = $scope.students.indexOf(value);  
         return (begin <= index && index < end);  
       };  
     });  
   </script>  
   <style>  
     .odd {  
       background-color: antiquewhite;  
       color: #008b8b;  
     }  
     td th {  
       height: 30px;  
       min-width: 100px;  
     }  
     thead {  
       background-color: darkgray;  
       color: white;  
       height: 30px;  
     }  
   </style>  
 </head>  
 <body ng-app="MyForm">  
   <div ng-controller="myCtrl">  
     <h3>List students</h3>  
     <div class="container-fluid">  
       <pre>Click header link to sort, input into filter text to filter</pre>  
       <hr />  
       <table class="table table-striped">  
         <thead>  
           <tr>  
             <th>Edit</th>
             <th>  
               <a href="" ng-click="order('productId')">Id</a>  
             </th>   
             <th>  
               <a href="" ng-click="order('productName')">Name</a>  
             </th>  
             <th><a href="" ng-click="order('categry')"> Category</a> </th>  
             <th><a href="" ng-click="order('price')">Price</a> </th>  
             <th>  
               <a href="" ng-click="order('status')">Status</a>  
             </th> 
               <th>  
               <a href="" ng-click="order('description')">Description</a>  
             </th>   
           </tr>  
         </thead>  
         <tbody>  
           <tr>  
             <td>Filter =>></td>  
             <td> <input type="text" ng-model="search.productId" /></td>  
             <td> <input type="text" ng-model="search.productName" /></td>  
             <td> <input type="text" ng-model="search.category" /> </td>  
             <td><input type="text" ng-model="search.description" /> </td> 
             <td><input type="text" ng-model="search.status" /> </td> 
             <td><input type="text" ng-model="search.price" /> </td>  
           </tr>  
           <tr ng-repeat="user in students | orderBy:predicate:reverse | filter:paginate| filter:search" ng-class-odd="'odd'">  
             <td>  
               <button class="btn">  
                 Edit  
               </button>  
             </td>
             <td>{{ user.productId}}</td>  
             <td>{{ user.productName}}</td>  
             <td>{{ user.category}}</td>  
             <td>{{ user.price}}</td>  
             <td>{{ user.status}}</td>  
             <td>{{ user.description}}</td>  
           </tr>  
         </tbody>  
       </table>  
       <pagination total-items="totalItems" ng-model="currentPage"  
             max-size="5" boundary-links="true"  
             items-per-page="numPerPage" class="pagination-sm">  
       </pagination>  
     </div>  
   </div>  
   
   ${myJson}
   
 </body>  
 </html>