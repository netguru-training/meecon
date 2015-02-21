class User < ActiveRecord::Base
  serialize :facebook_oauth
end
