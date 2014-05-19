require 'test_helper'

class Admin::StoreFormatsControllerTest < ActionController::TestCase
  setup do
    @admin_store_format = admin_store_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_store_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_store_format" do
    assert_difference('Admin::StoreFormat.count') do
      post :create, admin_store_format: { name: @admin_store_format.name }
    end

    assert_redirected_to admin_store_format_path(assigns(:admin_store_format))
  end

  test "should show admin_store_format" do
    get :show, id: @admin_store_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_store_format
    assert_response :success
  end

  test "should update admin_store_format" do
    patch :update, id: @admin_store_format, admin_store_format: { name: @admin_store_format.name }
    assert_redirected_to admin_store_format_path(assigns(:admin_store_format))
  end

  test "should destroy admin_store_format" do
    assert_difference('Admin::StoreFormat.count', -1) do
      delete :destroy, id: @admin_store_format
    end

    assert_redirected_to admin_store_formats_path
  end
end
