require 'rails_helper'

describe FluffysController do
  describe "Click on 'Get Rewards to update fluffy_coins'" do
    it 'calls the model method that updates fluffy_coins' do
       expect(Fluffys).to receive(:update_fluffy_coin)
       get :get_rewards, {:id => 3}
    end
  end
  
  describe "Click on 'Recommend Events to get Recommended events'" do
    it 'it recommends events' do
       expect(Fluffys).to receive(:run_recommendation)
       get :recommend, {:id => 1}
    end
  end
  
#   describe "Click on 'Recommend Events to Navigate to recommend page'" do
#     it 'goes to recommend page' do
#        get :redirecting_action
#  #     response.should redirect_to("https://webqr.com/")
#        expect(response).to redirect_to recommend_path
#     end
#   end

#   describe "Show all Default Events" do
#     expect(Fluffys).to receive(Events.all)
#   end

end