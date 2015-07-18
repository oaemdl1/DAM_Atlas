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

class Blockssupervisor < ActiveRecord::Base
  belongs_to :supervisor
  belongs_to :block
end
