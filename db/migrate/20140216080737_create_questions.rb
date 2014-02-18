class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.text :description
      t.string :answer
      t.integer :genre_id
      t.integer :default_point
      t.string :attach_filename
      t.binary :attach_file

      t.timestamps
    end
  end
end
