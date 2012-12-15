class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  acts_as_taggable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :tag_list
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
  # Setup accessible (or protected) attributes for your model
  
  validates_presence_of :email,:password, :name
  validates_uniqueness_of :email
end
