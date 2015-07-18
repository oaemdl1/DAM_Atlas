# == Schema Information
#
# Table name: positions
#
#  id         :integer          not null, primary key
#  detalle    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Position < ActiveRecord::Base
end
