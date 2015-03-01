class User < ActiveRecord::Base
  has_many :events
  serialize :facebook_oauth

  validates :uid, presence: true
end
