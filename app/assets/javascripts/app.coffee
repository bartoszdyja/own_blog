Blog = angular.module('Blog', ['ui.router', 'templates', 'ngMaterial'])

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

  $http.get('/articles/index.json').success (articles) ->
    $scope.articles = articles
