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
class User < ApplicationRecord
  has_one_attached :avatar

  belongs_to :state
  # scope :desc, order("user.person_name DESC")

end
