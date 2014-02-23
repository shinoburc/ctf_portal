class CreateClearedUserQuestions < ActiveRecord::Migration
  def change
    create_table :cleared_user_questions do |t|
      t.integer :event_id
      t.integer :event_user_id
      t.integer :event_question_id

      t.timestamps
    end
  end
end
