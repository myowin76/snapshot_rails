require 'test_helper'

class Admin::SettingsControllerTest < ActionController::TestCase
  setup do
    @admin_setting = admin_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_setting" do
    assert_difference('Admin::Setting.count') do
      post :create, admin_setting: { name: @admin_setting.name, value: @admin_setting.value }
    end

    assert_redirected_to admin_setting_path(assigns(:admin_setting))
  end

  test "should show admin_setting" do
    get :show, id: @admin_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_setting
    assert_response :success
  end

  test "should update admin_setting" do
    patch :update, id: @admin_setting, admin_setting: { name: @admin_setting.name, value: @admin_setting.value }
    assert_redirected_to admin_setting_path(assigns(:admin_setting))
  end

  test "should destroy admin_setting" do
    assert_difference('Admin::Setting.count', -1) do
      delete :destroy, id: @admin_setting
    end

    assert_redirected_to admin_settings_path
  end
end
