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
class State < ApplicationRecord
  has_many :users
end
