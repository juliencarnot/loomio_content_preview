angular.module('loomioApp').directive 'previewPane', ->
  scope: {comment: '=?', poll: '=?', discussion: '=?'}
  restrict: 'E'
  templateUrl: 'generated/components/preview_pane/preview_pane.html'
  replace: true
  controller: ($scope) ->
    $scope.model = $scope.comment || $scope.poll || $scope.discussion
    $scope.type  = $scope.model.constructor.singular
    $scope.$on 'commentFormInit', (event, comment) ->
      $scope.model = comment if $scope.type == 'comment'
