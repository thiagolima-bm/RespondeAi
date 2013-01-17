class SolutionStep < ActiveRecord::Base
  attr_accessible :body, :exercise_id, :number
  belongs_to :exercise
  belongs_to :user
  validates :exercise_id, presence: true
end
