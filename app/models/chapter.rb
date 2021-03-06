class Chapter < ActiveRecord::Base
  attr_accessible :book_id, :number, :title
  belongs_to :book
  has_many :exercises, dependent: :destroy
  validates :book_id, presence: true
end
