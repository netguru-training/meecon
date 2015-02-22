class User < ActiveRecord::Base
  has_many :events
  serialize :facebook_oauth
end
