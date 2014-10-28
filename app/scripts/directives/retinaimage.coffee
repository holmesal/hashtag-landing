'use strict'

###*
 # @ngdoc directive
 # @name landingApp.directive:retinaImage
 # @description replaces regular images with @2x
 # # retinaImage
###
angular.module('landingApp')
  .directive('retinaImage', ($window) ->
    template: "<img ng-src='{{src}}'>"
    restrict: 'E'
    replace: true
    scope: {}
    link: (scope, element, attrs) ->

      if window.devicePixelRatio >= 1.2
        scope.src = attrs.retinaSrc
      else
        scope.src = attrs.src
  )
