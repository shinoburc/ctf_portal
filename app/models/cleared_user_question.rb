class ClearedUserQuestion < ActiveRecord::Base
  belongs_to :event_user
  belongs_to :event_question

  validates :event_user_id, :uniqueness => {:scope =>:event_question_id}
end
