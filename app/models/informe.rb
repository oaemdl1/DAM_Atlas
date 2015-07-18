class Informe < ActiveRecord::Base
  belongs_to :supervisor
  belongs_to :company
  belongs_to :student
end
