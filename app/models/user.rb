# Model for user logged in with Faebook
class User < ActiveRecord::Base
  has_many :events
  serialize :facebook_oauth
  validates :uid, presence: true
  validates :image, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :facebook_oauth, presence: true
end
