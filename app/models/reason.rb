# == Schema Information
#
# Table name: reasons
#
#  id         :integer          not null, primary key
#  detalle    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reason < ActiveRecord::Base
end
