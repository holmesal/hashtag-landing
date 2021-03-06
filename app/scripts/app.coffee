'use strict'

###*
 # @ngdoc overview
 # @name landingApp
 # @description
 # # landingApp
 #
 # Main module of the application.
###
angular
  .module('landingApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'segmentio'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      # .when '/about',
      #   templateUrl: 'views/about.html'
      #   controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

  .run (segmentio) ->
    segmentio.load 'gIJ6qWMwlr'

