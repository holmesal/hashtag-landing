'use strict'

describe 'Directive: retinaImage', ->

  # load the directive's module
  beforeEach module 'landingApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<retina-image></retina-image>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the retinaImage directive'
