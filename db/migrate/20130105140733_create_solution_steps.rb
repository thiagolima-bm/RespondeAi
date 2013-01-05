class CreateSolutionSteps < ActiveRecord::Migration
  def change
    create_table :solution_steps do |t|
      t.string :number
      t.text :body
      t.integer :exercise_id

      t.timestamps
    end
  end
end
