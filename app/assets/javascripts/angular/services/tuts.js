myApp.factory('myFactory', ['$resource', function($resource){
	return $resource('/articles/:id', {id:'@id'});
}]);