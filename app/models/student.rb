class Student < ActiveRecord::Base
  belongs_to :specialty
  belongs_to :company
end
