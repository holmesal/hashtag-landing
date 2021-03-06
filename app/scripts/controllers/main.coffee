'use strict'

###*
 # @ngdoc function
 # @name landingApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the landingApp
###
angular.module('landingApp')
  .controller 'MainCtrl', ($scope, segmentio) ->


    userAgent = navigator.userAgent || navigator.vendor || window.opera

    console.log userAgent

    $scope.platforms = [
        name: 'iOS'
        link: 'https://itunes.apple.com/gb/app/hashtag/id920690505?mt=8'
      ,
        name: 'Android'
        link: 'https://play.google.com/store/apps/details?id=com.mtnlab.wavelength'
      ,
        name: 'Mac'
        link: 'http://shortwave-releases.s3.amazonaws.com/Hashtag.dmg'
      ,
        name: 'Windows'
        link: 'http://shortwave-releases.s3.amazonaws.com/Hashtag.zip'
      # ,
      #   name: 'Linux'
      #   link: 'http://amazons3.com'
    ]

    if userAgent.match( /iPad/i ) || userAgent.match( /iPhone/i ) || userAgent.match( /iPod/i )
      $scope.runningOn = 'iOS'
    else if userAgent.match( /Android/i )
      $scope.runningOn = 'Android'
    else if userAgent.match( /Windows/i )
      $scope.runningOn = 'Windows'
    else if userAgent.match( /Macintosh/i )
      $scope.runningOn = 'Mac'
    else if userAgent.match( /Linux/i )
      $scope.runningOn = 'Linux'


    # Log the page load
    segmentio.page 'Landing', 
      platform: $scope.runningOn
