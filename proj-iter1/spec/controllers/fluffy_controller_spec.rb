# require 'rails_helper'

# describe FluffysController do
#     describe 'Search movies by the same director' do
#         describe 'should call Fluffy.update_fluffy_coin' do
#             expect(Fluffy).to receive(update_fluffyCoion)
#             get :get_rewards
#         end
#     end
# end

require 'rails_helper'
require 'spec_helper'


describe FluffysController do
  describe "Click on 'Get Rewards to update fluffy_coins'" do
    it 'calls the model method that updates fluffy_coins' do
       expect(Fluffys).to receive(:update_fluffy_coin)
       get :get_rewards, {:id => 3}
    end
  end
end 


# describe FoosController, :type => :controller do

#   describe "GET redirect_to_baz" do
#     it "redirects to example.com with params" do
#       get :redirect_to_baz
#       expect(response).to redirect_to "https://webqr.com/"
#     end
#   end

# end





describe FooController , :type => :controller do

  describe '#redirecting_action' do

    it 'should redirect to webqr.com' do
      get :redirecting_action
 #     response.should redirect_to("https://webqr.com/")
      expect(response).to redirect_to "https://webqr.com/"
    end
  end

    
    
    
    
end