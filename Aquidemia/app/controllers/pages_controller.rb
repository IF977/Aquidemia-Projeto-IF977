class PagesController < ApplicationController
  def home
  end
  
  def gyms
    @gyms = Gym.all
  end
  
  def search
    @gyms = Gym.all
  end
  
end
