require 'test_helper'

class Admin::StoresControllerTest < ActionController::TestCase
  setup do
    @admin_store = admin_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_store" do
    assert_difference('Admin::Store.count') do
      post :create, admin_store: { address2: @admin_store.address2, address3: @admin_store.address3, address: @admin_store.address, channel_id: @admin_store.channel_id, country_id: @admin_store.country_id, description: @admin_store.description, environment_type_id: @admin_store.environment_type_id, latitude: @admin_store.latitude, longitude: @admin_store.longitude, name: @admin_store.name, postcode: @admin_store.postcode, retailer_id: @admin_store.retailer_id, store_format_id: @admin_store.store_format_id, town: @admin_store.town }
    end

    assert_redirected_to admin_store_path(assigns(:admin_store))
  end

  test "should show admin_store" do
    get :show, id: @admin_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_store
    assert_response :success
  end

  test "should update admin_store" do
    patch :update, id: @admin_store, admin_store: { address2: @admin_store.address2, address3: @admin_store.address3, address: @admin_store.address, channel_id: @admin_store.channel_id, country_id: @admin_store.country_id, description: @admin_store.description, environment_type_id: @admin_store.environment_type_id, latitude: @admin_store.latitude, longitude: @admin_store.longitude, name: @admin_store.name, postcode: @admin_store.postcode, retailer_id: @admin_store.retailer_id, store_format_id: @admin_store.store_format_id, town: @admin_store.town }
    assert_redirected_to admin_store_path(assigns(:admin_store))
  end

  test "should destroy admin_store" do
    assert_difference('Admin::Store.count', -1) do
      delete :destroy, id: @admin_store
    end

    assert_redirected_to admin_stores_path
  end
end
