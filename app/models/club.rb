class Club < ActiveRecord::Base
  attr_accessible :contact, :description, :name, :type, :url
end
