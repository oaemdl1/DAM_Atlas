class Visit < ActiveRecord::Base
  validate :model_validate, :supervisor_availability
  belongs_to :company
  belongs_to :student
  belongs_to :supervisor
  belongs_to :visit_status
  
  def model_validate
    if visit_date.present? && visit_date < Date.today
      errors.add(:visit_date, "La fecha debe ser mayor a la fecha actual.")
    end
    if company == nil
      errors.add(:company, "Seleccione una empresa")
    end

    if student == nil 
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
      #OK!!: available_books = Visit.where(["supervisor_id = ? and (visit_date >= ? and ? < visit_date+estimated_time)", supervisor.id, visit_date, visit_date]);
      #available_books = Visit.where(["supervisor_id = ? and ((visit_date between ? and ?) OR ((visit_date+estimated_time) between ? and ?))", supervisor.id, visit_date, visit_date]);
      available_visits = Visit.where(["supervisor_id = ? and ((? between visit_date and visit_date+interval estimated_time minute) OR ((?+interval ? minute) between visit_date and visit_date+interval estimated_time minute))", supervisor.id, visit_date, visit_date, estimated_time]);
      #select * from visits where supervisor_id=5 and (('2015-09-09 11:00:00' between visit_date and (visit_date+interval estimated_time minute)) OR ('2015-09-09 12:00:00'  between visit_date and visit_date+interval estimated_time minute));
      if available_visits.count > 1
          errors.add(:supervisor, "El supervisor ya tiene asignada una visita en la fecha seleccionada.")
      end
    end
  end
end
