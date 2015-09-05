angular.module('Blog', ['ui.router','templates'])
.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {
  
  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: 'home/home.html'
    })
    .state('away', {
      url: '/away',
      templateUrl: 'home/away.html'
    });

    $urlRouterProvider.otherwise('home');
}]);