require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #gyms" do
    it "returns http success" do
      get :gyms
      expect(response).to have_http_status(:success)
    end
  end

end
