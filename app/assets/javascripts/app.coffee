Blog = angular.module('Blog', ['ui.router', 'templates'])

Blog.config ($locationProvider) ->
  $locationProvider.html5Mode false

Blog.config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state('home',
        url: '/home'
        templateUrl: 'home/home.html').state 'away',
        url: '/away'
        templateUrl: 'home/away.html'
    
    $urlRouterProvider.otherwise 'home'

Blog.controller 'WebsiteCtrl', ($scope, $http) ->
  $scope.newHello = {}
  $scope.name     = 'Doctor'

  $http.get('/articles.json').success (hellos) ->
    $scope.hellos = hellos
