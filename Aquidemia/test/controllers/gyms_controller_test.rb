require 'test_helper'

class GymsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym = gyms(:one)
  end

  test "should get index" do
    get gyms_url
    assert_response :success
  end

  test "should get new" do
    get new_gym_url
    assert_response :success
  end

  test "should create gym" do
    assert_difference('Gym.count') do
      post gyms_url, params: { gym: { adress: @gym.adress, bairro: @gym.bairro, cnes: @gym.cnes, hour: @gym.hour, latitude: @gym.latitude, longitude: @gym.longitude, microregion: @gym.microregion, name: @gym.name, number: @gym.number, phone: @gym.phone, rating: @gym.rating, rpa: @gym.rpa } }
    end

    assert_redirected_to gym_url(Gym.last)
  end

  test "should show gym" do
    get gym_url(@gym)
    assert_response :success
  end

  test "should get edit" do
    get edit_gym_url(@gym)
    assert_response :success
  end

  test "should update gym" do
    patch gym_url(@gym), params: { gym: { adress: @gym.adress, bairro: @gym.bairro, cnes: @gym.cnes, hour: @gym.hour, latitude: @gym.latitude, longitude: @gym.longitude, microregion: @gym.microregion, name: @gym.name, number: @gym.number, phone: @gym.phone, rating: @gym.rating, rpa: @gym.rpa } }
    assert_redirected_to gym_url(@gym)
  end

  test "should destroy gym" do
    assert_difference('Gym.count', -1) do
      delete gym_url(@gym)
    end

    assert_redirected_to gyms_url
  end
end
