# == Schema Information
#
# Table name: companies
#
#  id                 :integer          not null, primary key
#  district_id        :integer
#  razonsocial        :text(65535)
#  ruc                :string(255)
#  telefonofijo       :string(255)
#  telefonomovil      :string(255)
#  partidaregistral   :string(255)
#  representantelegal :string(255)
#  correo             :string(255)
#  direccion          :string(255)
#  linkgooglemaps     :string(255)
#  eliminado          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Company < ActiveRecord::Base
  belongs_to :district
end
