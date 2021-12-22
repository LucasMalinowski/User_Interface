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
class User < ApplicationRecord
  before_validation :convert_state_initial_to_integer

  has_one_attached :avatar
  belongs_to :state
  @states = State.all

  scope :search, -> (state_ids) { where(state_id: state_ids)}

  validates :person_name,:city,:email,:person_name,:postal_code,:street, presence: true
  validates :state_id, presence: true, inclusion: { in: @states.map(&:id) }

  attr_accessor :state_uf

  validate :born_date_cannot_be_in_the_future

  def convert_state_initial_to_integer
    if self.state_uf.present?
      state = State.find_by(initial: self.state_uf)
      self.state_id = state.id
    end

  end

  def born_date_cannot_be_in_the_future
    if born_date.present? && born_date > Date.today
      errors.add(:born_date, "Não pode estar no futuro")
    end
  end

  def to_age
    #convert the born_date to the age
    age = (Date.today.year - born_date.year).to_i
    age = age.to_s + " anos"
  end

end
