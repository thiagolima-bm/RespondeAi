class AddUserIdToSolutionSteps < ActiveRecord::Migration
  def change
    add_column :solution_steps, :user_id, :integer
  end
end
