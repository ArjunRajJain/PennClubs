class Comment < ActiveRecord::Base
  attr_accessible :body, :rating, :title
  belongs_to :club
end
