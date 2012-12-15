class Club < ActiveRecord::Base
  attr_accessible :contact, :description, :name, :url, :rating, :picture, :remote_picture_url, :picture_cache, :tag_list, :college_id
  has_many :comments
  acts_as_taggable
  validates_presence_of :contact, :description, :name, :url
  validates_uniqueness_of :description, :name, :url
  scope :top10, order('rating desc').limit(10)
  mount_uploader :picture, PictureUploader
  belongs_to :college
end
