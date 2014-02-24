class CreateClearedUserQuestions < ActiveRecord::Migration
  def change
    create_table :cleared_user_questions do |t|
      t.integer :event_id, :default => 0, :null => false
      t.integer :event_user_id, :default => 0, :null => false
      t.integer :event_question_id, :default => 0, :null => false

      t.timestamps
    end
  end
end
