# == Schema Information
#
# Table name: states
#
#  id         :bigint           not null, primary key
#  initial    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class StateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
