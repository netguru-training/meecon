require 'rails_helper'

# describe HomeController do
#   describe 'GET root_path' do
#     before { get root_path }
#
#     it { should respond_with(200) }
#   end
# end

describe "routes for root of app" do
  it "routes / to the home controller index action" do
    expect(get: "/").to route_to(controller: "home", action: "index")
  end
end
