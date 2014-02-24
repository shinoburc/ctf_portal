class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :event_users do |t|
      t.integer :event_id, :default => 0, :null => false
      t.integer :user_id, :default => 0, :null => false

      t.timestamps
    end
  end
end
