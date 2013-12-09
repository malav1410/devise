class Article < ActiveRecord::Base
  attr_accessible :dsc, :title

  validates :title, :presence => true
end
