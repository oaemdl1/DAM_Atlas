# == Schema Information
#
# Table name: blockssupervisors
#
#  id            :integer          not null, primary key
#  supervisor_id :integer
#  block_id      :integer
#  idtecsem      :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class BlockssupervisorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
