# == Schema Information
#
# Table name: peas
#
#  id           :integer          not null, primary key
#  specialty_id :integer
#  ciclo        :string(255)
#  detalle      :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Pea < ActiveRecord::Base
  belongs_to :specialty
end
