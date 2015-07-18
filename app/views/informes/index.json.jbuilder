json.array!(@informes) do |informe|
  json.extract! informe, :id, :jefe, :fecha_visita, :supervisor_id, :company_id, :student_id, :aspectos_monitor, :aspectos_estudiante, :problemas_seguridad, :soluciones_seguridad, :problemas_estudiante, :soluciones_estudiante, :problemas_monitor, :soluciones_monitor, :problemas_puesto, :soluciones_puesto
  json.url informe_url(informe, format: :json)
end
