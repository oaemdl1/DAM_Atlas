# == Schema Information
#
# Table name: pea_avances
#
#  id             :integer          not null, primary key
#  pea_id         :integer
#  dominio        :string(255)
#  oper_ejecutar  :boolean
#  oper_seminario :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class PeaAvance < ActiveRecord::Base
  belongs_to :pea
end
