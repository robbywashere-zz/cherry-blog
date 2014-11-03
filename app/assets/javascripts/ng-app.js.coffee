# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



@app = angular.module('app', ['ngRoute', 'templates', 'ngResource'])

@app.config ($routeProvider, $httpProvider, $locationProvider, $interpolateProvider) ->

  $locationProvider.html5Mode(true)

  $routeProvider
  .when "/posts/new", { templateUrl: "posts/new.html" }
  .when "/posts",     { templateUrl: "posts/index.html" }
  .when "/posts/:id", { templateUrl: "posts/show.html" }
  .otherwise          { templateUrl: 'home/index.html'
                      , controller:  'HomeIndexCtrl' }

