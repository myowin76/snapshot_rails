require 'test_helper'

class Admin::BrandOwnersControllerTest < ActionController::TestCase
  setup do
    @admin_brand_owner = admin_brand_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_brand_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_brand_owner" do
    assert_difference('Admin::BrandOwner.count') do
      post :create, admin_brand_owner: { name: @admin_brand_owner.name }
    end

    assert_redirected_to admin_brand_owner_path(assigns(:admin_brand_owner))
  end

  test "should show admin_brand_owner" do
    get :show, id: @admin_brand_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_brand_owner
    assert_response :success
  end

  test "should update admin_brand_owner" do
    patch :update, id: @admin_brand_owner, admin_brand_owner: { name: @admin_brand_owner.name }
    assert_redirected_to admin_brand_owner_path(assigns(:admin_brand_owner))
  end

  test "should destroy admin_brand_owner" do
    assert_difference('Admin::BrandOwner.count', -1) do
      delete :destroy, id: @admin_brand_owner
    end

    assert_redirected_to admin_brand_owners_path
  end
end
