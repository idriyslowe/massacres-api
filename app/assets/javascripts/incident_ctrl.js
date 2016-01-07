/* global angular */

(function() {
  angular.module("app").controller("murders", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/incidents.json').then(function(response) {
        $scope.incidents = response.data;
      });
    };

    $scope.addIncident = function(firstname, lastname, birthdate, location, weapon, victims, sentence) {
      var incident = {
        'murderer_first_name': firstname,
        'murderer_last_name': lastname,
        'birthdate': birthdate,
        'location': location,
        'weapon': weapon,
        'number_of_victims': victims,
        'sentence': sentence
      };
      $http.post('/api/v1/incidents.json', incident).then(function(response) {
        console.log(response);
        $scope.incidents.push(incident);
      }, function(error) {
        console.log(error);
        $scope.errors = error.data.errors;
      });
    };

    $scope.sortBy = function(inputSortAttribute) {
      if(inputSortAttribute !== $scope.sortAttribute) {
        $scope.sortDescending = false;
      } else {
        $scope.sortDescending = !$scope.sortDescending;
      }
      $scope.sortAttribute = inputSortAttribute;
    };

    window.$scope = $scope;
  });
})();