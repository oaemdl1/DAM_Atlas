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

require 'test_helper'

class PeaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
