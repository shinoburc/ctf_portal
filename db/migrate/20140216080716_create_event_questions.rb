class CreateEventQuestions < ActiveRecord::Migration
  def change
    create_table :event_questions do |t|
      t.integer :order_number, :default => 0, :null => false
      t.integer :point, :default => 0, :null => false
      t.integer :event_id, :default => 0, :null => false
      t.integer :question_id, :default => 0, :null => false

      t.timestamps
    end
  end
end
