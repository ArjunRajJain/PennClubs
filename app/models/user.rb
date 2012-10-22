class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :preferences 
  validates_presence_of :email, :name
  validates_uniqueness_of :email
end
