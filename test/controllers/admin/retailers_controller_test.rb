require 'test_helper'

class Admin::RetailersControllerTest < ActionController::TestCase
  setup do
    @admin_retailer = admin_retailers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_retailers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_retailer" do
    assert_difference('Admin::Retailer.count') do
      post :create, admin_retailer: { name: @admin_retailer.name, sector_id: @admin_retailer.sector_id }
    end

    assert_redirected_to admin_retailer_path(assigns(:admin_retailer))
  end

  test "should show admin_retailer" do
    get :show, id: @admin_retailer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_retailer
    assert_response :success
  end

  test "should update admin_retailer" do
    patch :update, id: @admin_retailer, admin_retailer: { name: @admin_retailer.name, sector_id: @admin_retailer.sector_id }
    assert_redirected_to admin_retailer_path(assigns(:admin_retailer))
  end

  test "should destroy admin_retailer" do
    assert_difference('Admin::Retailer.count', -1) do
      delete :destroy, id: @admin_retailer
    end

    assert_redirected_to admin_retailers_path
  end
end
