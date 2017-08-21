angular.module('loomioApp').directive 'previewButton', ->
  restrict: 'E'
  templateUrl: 'generated/components/preview_button/preview_button.html'
  replace: true
  controller: ($scope) ->

    selectors = ->
      [
        '.preview-pane',
        '.lmo-textarea-wrapper textarea',
        '.lmo-textarea-wrapper .lmo-md-actions'
      ].join(',')

    $scope.toggle = ->
      angular.element(document.querySelectorAll(selectors())).toggleClass('lmo-hidden')
      $scope.previewing = !$scope.previewing
    $scope.$on 'commentFormInit', ->
      $scope.toggle() if $scope.previewing
