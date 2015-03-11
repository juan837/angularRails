@myApp.factory('Estudiantes',['$resource',($resource) ->
  $resource('/estudiantes.json',{},
    query:
      method: 'GET'
      isArray: true
    create:
      method: 'POST'
  )
])
#metodos de actualizar y eliminar
@myApp.factory('Estudiante',['$resource',($resource) ->
  $resource('/estudiantes/:id.json',{},
    show:
      method: 'GET'
    update:
      method: 'PUT'
      params:
        id: "@id"
    delete:
      method: 'DELETE'
      params:
        id: "@id"
  )
])