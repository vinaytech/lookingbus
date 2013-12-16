require 'test_helper'

class DeviceStopsControllerTest < ActionController::TestCase
  setup do
    @device_stop = device_stops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_stops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_stop" do
    assert_difference('DeviceStop.count') do
      post :create, device_stop: { device_id: @device_stop.device_id, number_of_passanger: @device_stop.number_of_passanger, stop_lan: @device_stop.stop_lan, stop_lat: @device_stop.stop_lat, stop_name: @device_stop.stop_name, stop_time: @device_stop.stop_time }
    end

    assert_redirected_to device_stop_path(assigns(:device_stop))
  end

  test "should show device_stop" do
    get :show, id: @device_stop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_stop
    assert_response :success
  end

  test "should update device_stop" do
    patch :update, id: @device_stop, device_stop: { device_id: @device_stop.device_id, number_of_passanger: @device_stop.number_of_passanger, stop_lan: @device_stop.stop_lan, stop_lat: @device_stop.stop_lat, stop_name: @device_stop.stop_name, stop_time: @device_stop.stop_time }
    assert_redirected_to device_stop_path(assigns(:device_stop))
  end

  test "should destroy device_stop" do
    assert_difference('DeviceStop.count', -1) do
      delete :destroy, id: @device_stop
    end

    assert_redirected_to device_stops_path
  end
end
