class Preference < ActiveRecord::Base
  belongs_to :user
  belongs_to :club
  attr_accessible :name, :user_id, :club_id
end
