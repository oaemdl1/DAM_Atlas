# == Schema Information
#
# Table name: districts
#
#  id         :integer          not null, primary key
#  detalle    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class District < ActiveRecord::Base
end
