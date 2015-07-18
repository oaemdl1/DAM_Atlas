# == Schema Information
#
# Table name: blocks
#
#  id              :integer          not null, primary key
#  specialty_id    :integer
#  semestre        :string(255)
#  ciclo_academico :string(255)
#  bloque          :string(255)
#  dia_semana      :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Block < ActiveRecord::Base
  belongs_to :specialty
end
