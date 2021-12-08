# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  city         :string
#  person_image :string
#  person_name  :string
#  postal_code  :integer
#  street       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  state_id     :bigint
#
# Indexes
#
#  index_users_on_state_id  (state_id)
#
# Foreign Keys
#
#  fk_rails_...  (state_id => states.id)
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
