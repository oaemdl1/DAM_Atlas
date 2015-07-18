# == Schema Information
#
# Table name: specialties
#
#  id         :integer          not null, primary key
#  detalle    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Specialty < ActiveRecord::Base
end
