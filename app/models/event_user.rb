class EventUser < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  has_many :cleared_user_questions, dependent: :destroy
  has_many :event_questions, through: :cleared_user_questions

  validates :event_id,:uniqueness => {:scope =>:user_id}
end
