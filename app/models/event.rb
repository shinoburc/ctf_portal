class Event < ActiveRecord::Base
  has_many :event_users
  has_many :users, through: :event_users
  has_many :event_questions
  has_many :questions, through: :event_questions
end
