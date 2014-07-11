require 'test_helper'

class Admin::MediaTypesControllerTest < ActionController::TestCase
  setup do
    @admin_media_type = admin_media_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_media_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_media_type" do
    assert_difference('Admin::MediaType.count') do
      post :create, admin_media_type: { name: @admin_media_type.name }
    end

    assert_redirected_to admin_media_type_path(assigns(:admin_media_type))
  end

  test "should show admin_media_type" do
    get :show, id: @admin_media_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_media_type
    assert_response :success
  end

  test "should update admin_media_type" do
    patch :update, id: @admin_media_type, admin_media_type: { name: @admin_media_type.name }
    assert_redirected_to admin_media_type_path(assigns(:admin_media_type))
  end

  test "should destroy admin_media_type" do
    assert_difference('Admin::MediaType.count', -1) do
      delete :destroy, id: @admin_media_type
    end

    assert_redirected_to admin_media_types_path
  end
end
