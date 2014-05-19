require 'test_helper'

class Admin::EnvironmentTypesControllerTest < ActionController::TestCase
  setup do
    @admin_environment_type = admin_environment_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_environment_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_environment_type" do
    assert_difference('Admin::EnvironmentType.count') do
      post :create, admin_environment_type: { name: @admin_environment_type.name }
    end

    assert_redirected_to admin_environment_type_path(assigns(:admin_environment_type))
  end

  test "should show admin_environment_type" do
    get :show, id: @admin_environment_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_environment_type
    assert_response :success
  end

  test "should update admin_environment_type" do
    patch :update, id: @admin_environment_type, admin_environment_type: { name: @admin_environment_type.name }
    assert_redirected_to admin_environment_type_path(assigns(:admin_environment_type))
  end

  test "should destroy admin_environment_type" do
    assert_difference('Admin::EnvironmentType.count', -1) do
      delete :destroy, id: @admin_environment_type
    end

    assert_redirected_to admin_environment_types_path
  end
end
