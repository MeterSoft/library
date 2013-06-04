class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :categories, :dependent => :delete_all
  has_many :books, :dependent => :delete_all
end
