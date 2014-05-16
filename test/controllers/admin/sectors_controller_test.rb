require 'test_helper'

class Admin::SectorsControllerTest < ActionController::TestCase
  setup do
    @admin_sector = admin_sectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_sectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_sector" do
    assert_difference('Admin::Sector.count') do
      post :create, admin_sector: { name: @admin_sector.name }
    end

    assert_redirected_to admin_sector_path(assigns(:admin_sector))
  end

  test "should show admin_sector" do
    get :show, id: @admin_sector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_sector
    assert_response :success
  end

  test "should update admin_sector" do
    patch :update, id: @admin_sector, admin_sector: { name: @admin_sector.name }
    assert_redirected_to admin_sector_path(assigns(:admin_sector))
  end

  test "should destroy admin_sector" do
    assert_difference('Admin::Sector.count', -1) do
      delete :destroy, id: @admin_sector
    end

    assert_redirected_to admin_sectors_path
  end
end
