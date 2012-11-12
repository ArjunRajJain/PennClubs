class Comment < ActiveRecord::Base
  attr_accessible :body, :rating, :title
  belongs_to :club
  scope :top10, order('rating desc').limit(10)
end
