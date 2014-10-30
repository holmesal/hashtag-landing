(function(){"use strict";angular.module("landingApp",["ngAnimate","ngCookies","ngResource","ngRoute","ngSanitize","ngTouch"]).config(["$routeProvider",function(a){return a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl"}).otherwise({redirectTo:"/"})}])}).call(this),function(){"use strict";angular.module("landingApp").controller("MainCtrl",["$scope",function(a){var b;return b=navigator.userAgent||navigator.vendor||window.opera,console.log(b),a.platforms=[{name:"iOS",link:"https://itunes.apple.com/gb/app/hashtag/id920690505?mt=8"},{name:"Android",link:"https://play.google.com/store/apps/details?id=com.mtnlab.wavelength"},{name:"Mac",link:"http://shortwave-releases.s3.amazonaws.com/Shortwave.dmg"}],b.match(/iPad/i)||b.match(/iPhone/i)||b.match(/iPod/i)?a.runningOn="iOS":b.match(/Android/i)?a.runningOn="Android":b.match(/Windows/i)?a.runningOn="Windows":b.match(/Macintosh/i)?a.runningOn="Mac":b.match(/Linux/i)?a.runningOn="Linux":void 0}])}.call(this),function(){"use strict";angular.module("landingApp").controller("AboutCtrl",["$scope",function(a){return a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}])}.call(this),function(){"use strict";angular.module("landingApp").directive("retinaImage",["$window",function(){return{template:"<img ng-src='{{src}}'>",restrict:"E",replace:!0,scope:{},link:function(a,b,c){return a.src=window.devicePixelRatio>=1.2?c.retinaSrc:c.src}}}])}.call(this);