class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name,               :null => false, :default => ""
      t.text :description
      t.string :answer
      t.integer :genre_id, :default => 0, :null => false
      t.integer :default_point, :default => 0, :null => false
      t.string :attach_filename
      t.binary :attach_file

      t.timestamps
    end
  end
end
