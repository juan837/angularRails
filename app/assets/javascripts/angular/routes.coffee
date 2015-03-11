@myApp.config [
  "$routeProvider"
  "$locationProvider"
  ($routeProvider, $locationProvider) ->
    $routeProvider.when "/estudiantes",
      templateUrl: "estudiantes/index"
      controller: "EstudianteListCtr"
]