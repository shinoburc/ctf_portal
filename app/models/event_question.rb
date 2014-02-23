class EventQuestion < ActiveRecord::Base
  belongs_to :event
  belongs_to :question

  attr_accessor :answer
end
