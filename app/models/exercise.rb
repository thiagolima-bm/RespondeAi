class Exercise < ActiveRecord::Base
  attr_accessible :chapter_id, :number
  belongs_to :chapter
  has_many :solution_steps, dependent: :destroy
  validates :chapter_id, presence: true
end
