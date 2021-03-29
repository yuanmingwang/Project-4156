require 'rails_helper'

describe FluffysController do
  describe "Click on 'Get Rewards to update fluffy_coins'" do
    it 'calls the model method that updates fluffy_coins' do
       expect(Fluffys).to receive(:update_fluffy_coin)
       get :get_rewards, {:id => 3}
    end
  end
  
#   describe "Click on 'Recommend Events to get Recommended events'" do
#     it 'it recommends events' do
#        expect(Fluffys).to receive(:run_recommendation)
#        get :get_recommend, {:id => 3}
#     end
#   end

#   describe "Show all Default Events" do
#     expect(Fluffys).to receive(Events.all)
#   end
   describe "Click on 'Reset Rewards to reset fluffy_coins'" do
    it 'calls the model method that resets fluffy_coins' do
       expect(Fluffys).to receive(:reset_fluffy_coin)
       get :reset_rewards, {:id => 3}
    end
  end
    
  describe "Click on 'Login' to login" do
      it 'calls the model method to check if the user input is valid' do
          expect(Fluffys).to receive(:is_outofRange).with(0)
       get :user, {:id => "0", :password => "0"}
    end
  end
end