require 'rails_helper'

describe "routes for root of app" do
  it "routes / to the home controller index action" do
    expect(get: "/").to route_to(controller: "home", action: "index")
  end
end
