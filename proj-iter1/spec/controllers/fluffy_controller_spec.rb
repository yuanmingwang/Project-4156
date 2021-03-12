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

describe FluffysController do
  describe "Click on 'Get Rewards to update fluffy_coins'" do
    it 'calls the model method that updates fluffy_coins' do
       expect(Fluffys).to receive(:update_fluffy_coin)
       get :get_rewards, {:id => 3}
    end
  end
end 
