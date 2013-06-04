class Book < ActiveRecord::Base
  attr_accessible :autor, :category_id, :name, :year

  belongs_to :category
  belongs_to :user
end
