class Role < ActiveRecord::Base
  
  has_many :users, :through => :role_users

  attr_accessible :name
end
