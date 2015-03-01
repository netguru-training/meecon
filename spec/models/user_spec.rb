require 'rails_helper'

describe User do
  it 'validates presence of User fields' do
    expect(User.new).to validate_presence_of :uid
    expect(User.new).to validate_presence_of :image
    expect(User.new).to validate_presence_of :name
    expect(User.new).to validate_presence_of :email
    expect(User.new).to validate_presence_of :facebook_oauth
  end
end
