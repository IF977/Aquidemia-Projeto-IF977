require 'rails_helper'

RSpec.describe GymsController, type: :controller do
  
  
    auth = {
      provider: "google",
      uid: "12345678910",
      info: {
        email: "email@detestes.com",
        first_name: "Gabriel",
        last_name: "MacHamilton"
      },
      credentials: {
        token: "abcdefg12345",
        refresh_token: "12345abcdefg",
        expires_at: Time.current.round
      }
    }
    User.update_or_create(auth)
    new_user = User.first
    
    gym = Gym.find(1)
  
    describe "POST #vote_up" do
      it "adds a positive rating to a gym" do
        new_user.vote_exclusively_for(gym)
        expect(new_user.voted_for?(gym)).to be true
      end
    end
    
    describe "POST #vote_down" do
      it "adds a negative rating to a gym" do
        new_user.vote_exclusively_against(gym)
        expect(new_user.voted_against?(gym)).to be true
      end
    end
    
    describe "POST #add_favorite" do
      it "favorites a gym" do
        new_user.follow(gym)
        expect(new_user.following?(gym)).to be true
      end
    end
    
    describe "POST #remove_favorite" do
      it "unfavorites a gym" do
        new_user.stop_following(gym)
        expect(new_user.following?(gym)).to be false
      end
    end
end