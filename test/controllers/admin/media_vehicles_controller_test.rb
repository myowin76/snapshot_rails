require 'test_helper'

class Admin::MediaVehiclesControllerTest < ActionController::TestCase
  setup do
    @admin_media_vehicle = admin_media_vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_media_vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_media_vehicle" do
    assert_difference('Admin::MediaVehicle.count') do
      post :create, admin_media_vehicle: { name: @admin_media_vehicle.name }
    end

    assert_redirected_to admin_media_vehicle_path(assigns(:admin_media_vehicle))
  end

  test "should show admin_media_vehicle" do
    get :show, id: @admin_media_vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_media_vehicle
    assert_response :success
  end

  test "should update admin_media_vehicle" do
    patch :update, id: @admin_media_vehicle, admin_media_vehicle: { name: @admin_media_vehicle.name }
    assert_redirected_to admin_media_vehicle_path(assigns(:admin_media_vehicle))
  end

  test "should destroy admin_media_vehicle" do
    assert_difference('Admin::MediaVehicle.count', -1) do
      delete :destroy, id: @admin_media_vehicle
    end

    assert_redirected_to admin_media_vehicles_path
  end
end
