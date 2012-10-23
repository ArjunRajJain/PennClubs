class Club < ActiveRecord::Base
  attr_accessible :contact, :description, :name, :url
  has_many :comments
  validates_presence_of :contact, :description, :name, :url
  validates_uniqueness_of :description, :name, :url
end
