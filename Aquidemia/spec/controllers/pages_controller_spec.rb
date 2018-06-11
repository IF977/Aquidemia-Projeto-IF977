require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #gyms" do
    it "returns http success" do
      get :gyms
      expect(response).to have_http_status(:success)
    end

  describe "GET pages" do
    it "should return GET #home" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "should return GET #about" do
      get :about
      expect(response).to have_http_status(:success)
    end

    it "should return GET #search" do
      get :search
      expect(response).to have_http_status(:success)
    end
    
    it "should return GET #favorites" do
      get :favorites
      expect(response).to have_http_status(:success)
    end
  end

end

end
