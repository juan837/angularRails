json.array!(@estudiantes) do |estudiante|
  json.extract! estudiante, :id, :nombre, :apellido, :edad
  json.url estudiante_url(estudiante, format: :json)
end
