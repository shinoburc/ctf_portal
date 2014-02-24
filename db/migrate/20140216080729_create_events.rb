class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name,               :null => false, :default => ""
      t.text :description
      t.integer  :max_group_member, :default => 1, :null => false
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
  end
end
