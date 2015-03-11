@myApp.controller "EstudianteListCtr", [
  "$scope"
  "$http"
  "$resource"
  "Estudiantes"
  "Estudiante"
  "$location"
  ($scope, $http, $resource, Estudiantes, Estudiante, $location) ->
    $scope.estudiantes = Estudiantes.query()
    #creo un nuevo evento para la funcion Nuevo
    $scope.NuevoModal = ->
      $('#estudianteModal').modal('show')
      console.log 'ejecuto modal'
      return

    $scope.NuevoForm = ->
      $scope.formVisibility = true
      console.log $scope.formVisibility

    $scope.Agregar = ->
      $scope.estudiantes.push({nombre:$scope.nuevoEstudiante.nombre, apellido:$scope.nuevoEstudiante.apellido, edad:$scope.nuevoEstudiante.edad})
      $('#estudianteModal').modal('hide')
      return

    $scope.AgregarForm = ->
      $scope.estudiantes.push({nombre:$scope.nuevoEstudiante.nombre, apellido:$scope.nuevoEstudiante.apellido, edad:$scope.nuevoEstudiante.edad})
      $scope.formVisibility = false
]