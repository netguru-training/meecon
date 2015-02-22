class Authenticator
  attr_reader :auth_hash

  def initialize(oauth)
    @auth_hash = oauth
  end

  def login
    User.find_or_create_by!(uid: auth_hash['uid']) do |user|
      user.name = auth_hash['info']['name']
      user.email = auth_hash['info']['email'] 
      user.image = auth_hash['info']['image']
      user.facebook_oauth = auth_hash
    end
  end
end

