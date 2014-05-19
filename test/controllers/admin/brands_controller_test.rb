require 'test_helper'

class Admin::BrandsControllerTest < ActionController::TestCase
  setup do
    @admin_brand = admin_brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_brand" do
    assert_difference('Admin::Brand.count') do
      post :create, admin_brand: { brand_owner_id: @admin_brand.brand_owner_id, name: @admin_brand.name }
    end

    assert_redirected_to admin_brand_path(assigns(:admin_brand))
  end

  test "should show admin_brand" do
    get :show, id: @admin_brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_brand
    assert_response :success
  end

  test "should update admin_brand" do
    patch :update, id: @admin_brand, admin_brand: { brand_owner_id: @admin_brand.brand_owner_id, name: @admin_brand.name }
    assert_redirected_to admin_brand_path(assigns(:admin_brand))
  end

  test "should destroy admin_brand" do
    assert_difference('Admin::Brand.count', -1) do
      delete :destroy, id: @admin_brand
    end

    assert_redirected_to admin_brands_path
  end
end
