class Visit < ActiveRecord::Base
  belongs_to :company
  belongs_to :supervisor
  belongs_to :visit_status
end
