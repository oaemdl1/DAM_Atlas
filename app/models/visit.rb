class Visit < ActiveRecord::Base
  validate :model_validate, :supervisor_availability
  belongs_to :company
  belongs_to :supervisor
  belongs_to :visit_status
  belongs_to :student
  
  def model_validate
    if visit_date.present? && visit_date < Date.today
      errors.add(:visit_date, "La fecha debe ser mayor a la fecha actual.")
    end
    if company == nil
      errors.add(:company, "Seleccione una empresa")
    end
    if student == nil || student == ""
      errors.add(:student, "Seleccione un estudiante")
    end
    if supervisor == nil
        errors.add(:supervisor, "Seleccione un supervisor")
    end
    if estimated_time == nil
      errors.add(:estimated_time, "Ingrese el tiempo de la visita")
    end
  end
  
  def supervisor_availability
    if supervisor != nil && company != nil
      #available_books = Visit.where(["supervisor_id = ? and visit_date >= ?", supervisor.id, visit_date]);
      available_books = Visit.where(["supervisor_id = ? and (visit_date >= ? and ? < visit_date+estimated_time)", supervisor.id, visit_date, visit_date]);
      #available_books = Visit.where(["supervisor_id = ?", supervisor.id]);
    
      if available_books.count > 1
          errors.add(:supervisor, "El supervisor ya tiene asignada una visita en la fecha seleccionada.")
      end
    end
  end
end
