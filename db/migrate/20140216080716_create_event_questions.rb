class CreateEventQuestions < ActiveRecord::Migration
  def change
    create_table :event_questions do |t|
      t.integer :order_number
      t.integer :point
      t.integer :event_id
      t.integer :question_id

      t.timestamps
    end
  end
end
