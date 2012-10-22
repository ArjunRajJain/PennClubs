class Club < ActiveRecord::Base
  attr_accessible :contact, :description, :name, :type, :url
  has_many :comments
  validates_presence_of :contact, :description, :name, :type, :url
  validates_uniqueness_of :description, :name, :url
  
end
