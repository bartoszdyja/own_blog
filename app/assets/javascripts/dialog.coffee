DialogController = ($scope, $mdDialog) ->

  $scope.hide = ->
    $mdDialog.hide()
    return

  $scope.cancel = ->
    $mdDialog.cancel()
    return

  $scope.answer = (answer) ->
    $mdDialog.hide answer
    return

  return

angular.module('Blog').controller 'AppCtrl', ['$scope', '$mdDialog'
  ($scope, $mdDialog) ->
    $scope.status = '  '

    $scope.showAlert = (ev) ->
      $mdDialog.show $mdDialog.alert().parent(angular.element(document.querySelector('#popupContainer'))).clickOutsideToClose(true).title('This is an alert title').content('You can specify some description text in here.').ariaLabel('Alert Dialog Demo').ok('Got it!').targetEvent(ev)
]