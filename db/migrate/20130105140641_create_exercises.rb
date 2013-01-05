class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :number
      t.integer :chapter_id

      t.timestamps
    end
  end
end
