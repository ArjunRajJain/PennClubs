class College < ActiveRecord::Base
  attr_accessible :name
  has_many :clubs
  validates_uniqueness_of :name
  validates_presence_of  :name
end
