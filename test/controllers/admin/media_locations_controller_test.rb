require 'test_helper'

class Admin::MediaLocationsControllerTest < ActionController::TestCase
  setup do
    @admin_media_location = admin_media_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_media_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_media_location" do
    assert_difference('Admin::MediaLocation.count') do
      post :create, admin_media_location: { name: @admin_media_location.name }
    end

    assert_redirected_to admin_media_location_path(assigns(:admin_media_location))
  end

  test "should show admin_media_location" do
    get :show, id: @admin_media_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_media_location
    assert_response :success
  end

  test "should update admin_media_location" do
    patch :update, id: @admin_media_location, admin_media_location: { name: @admin_media_location.name }
    assert_redirected_to admin_media_location_path(assigns(:admin_media_location))
  end

  test "should destroy admin_media_location" do
    assert_difference('Admin::MediaLocation.count', -1) do
      delete :destroy, id: @admin_media_location
    end

    assert_redirected_to admin_media_locations_path
  end
end
