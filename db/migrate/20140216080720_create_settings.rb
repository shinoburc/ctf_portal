class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name,               :null => false, :default => ""
      t.string :value,               :null => false, :default => ""

      t.timestamps
    end
  end
end
