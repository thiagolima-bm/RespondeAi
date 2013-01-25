class SolutionStep < ActiveRecord::Base
  attr_accessible :body, :exercise_id, :number
  belongs_to :exercise
  belongs_to :user
  has_many :comments
  validates :exercise_id, presence: true
end
