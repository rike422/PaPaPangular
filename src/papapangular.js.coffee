angular.module("papapangualr", []).directive('papapangualr', ->
  restrict:'EA'
  require: '?ngModel'
  scope: {},
  link: (scope, elem, attrs, ngModel) ->
    elem.parse {
      complete: (result) ->
        scope.$apply ->
          ngMode.$setViewValue(result)
    }
