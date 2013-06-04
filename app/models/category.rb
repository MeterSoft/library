class Category < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :books, :dependent => :delete_all
  belongs_to :user
end
