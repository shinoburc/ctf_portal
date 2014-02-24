class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name,               :null => false, :default => ""

      t.timestamps
    end
  end
end
