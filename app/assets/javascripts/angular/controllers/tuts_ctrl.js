myApp.controller('TutsCtrl', ['$scope','myFactory',function($scope,myFactory){
	$scope.tuts = myFactory.query();
	$scope.selectedTut = null;

	//set the selected tutorial to the view
	$scope.showTuts = function(tut){
		$scope.selectedTut = tut;
	}
}]);