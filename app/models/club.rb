class Club < ActiveRecord::Base
  attr_accessible :contact, :description, :name, :url, :rating
  has_many :comments
  has_many :preferences
  validates_presence_of :contact, :description, :name, :url
  validates_uniqueness_of :description, :name, :url
  scope :top10, order('rating desc').limit(10)
end
