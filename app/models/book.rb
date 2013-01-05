class Book < ActiveRecord::Base
  attr_accessible :author, :description, :edition, :isbn10, :isbn13, :publisher, :title
end
