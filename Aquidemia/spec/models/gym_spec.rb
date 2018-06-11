require 'rails_helper'

RSpec.describe Gym, type: :model do
  it "has 41 to begin with" do
    expect(Gym.count).to eq 41
  end

  it "has one more after creating" do
    Gym.create
    expect(Gym.count).to eq 42
  end

  it "has 41 again after one was created in a previous example" do
    expect(Gym.count).to eq 41
  end

end