class SolutionStep < ActiveRecord::Base
  attr_accessible :body, :exercise_id, :number
  belongs_to :exercise
end
