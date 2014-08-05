myApp.controller('TutsCtrl', ['$scope','myFactory',function($scope,myFactory){
	$scope.tuts = myFactory.query();
}]);