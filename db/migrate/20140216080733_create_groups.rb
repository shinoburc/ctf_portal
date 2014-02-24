class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name, :null => false, :default => ""
      t.text :description
      t.string :encrypted_password, :null => false, :default => ""

      t.timestamps
    end
  end
end
