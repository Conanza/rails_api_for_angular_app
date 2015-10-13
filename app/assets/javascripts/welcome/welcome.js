angularApp.controller('WelcomeController', ['$scope', function($scope) {
  $scope.name = '';
  $scope.inputDisabled = false;

  $scope.greet = function (name) {
    return "Hello, " + name + "!";
  };

  $scope.removeInput = function () {
    if ($scope.name) {
      $scope.inputDisabled = true;
    }
  };

  $scope.revealInput = function () {
    $scope.inputDisabled = false;
  };
}]);
