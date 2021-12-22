# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  born_date    :datetime         not null
#  city         :string           not null
#  email        :string           not null
#  person_image :string
#  person_name  :string           not null
#  postal_code  :integer          not null
#  street       :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  state_id     :bigint           not null
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
