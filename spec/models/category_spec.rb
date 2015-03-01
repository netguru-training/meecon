require 'rails_helper'

describe Category do
  it 'validates presence of Category fields' do
    expect(Category.new).to validate_presence_of :name
  end
end
