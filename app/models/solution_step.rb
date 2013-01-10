class SolutionStep < ActiveRecord::Base
  attr_accessible :body, :exercise_id, :number
  belongs_to :exercise
  validates :exercise_id, presence: true
end
