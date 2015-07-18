# == Schema Information
#
# Table name: supervisors
#
#  id              :integer          not null, primary key
#  company_id      :integer
#  nombrep         :string(255)
#  nombres         :string(255)
#  apellidopaterno :string(255)
#  apellidomaterno :string(255)
#  dni             :string(255)
#  telefonos       :string(255)
#  correopersonal  :string(255)
#  eliminado       :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Supervisor < ActiveRecord::Base
  belongs_to :company
end
