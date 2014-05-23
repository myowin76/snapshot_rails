require 'test_helper'

class Admin::AuditsControllerTest < ActionController::TestCase
  setup do
    @admin_audit = admin_audits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_audits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_audit" do
    assert_difference('Admin::Audit.count') do
      post :create, admin_audit: { audit_date: @admin_audit.audit_date, photos_count: @admin_audit.photos_count, store_id: @admin_audit.store_id }
    end

    assert_redirected_to admin_audit_path(assigns(:admin_audit))
  end

  test "should show admin_audit" do
    get :show, id: @admin_audit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_audit
    assert_response :success
  end

  test "should update admin_audit" do
    patch :update, id: @admin_audit, admin_audit: { audit_date: @admin_audit.audit_date, photos_count: @admin_audit.photos_count, store_id: @admin_audit.store_id }
    assert_redirected_to admin_audit_path(assigns(:admin_audit))
  end

  test "should destroy admin_audit" do
    assert_difference('Admin::Audit.count', -1) do
      delete :destroy, id: @admin_audit
    end

    assert_redirected_to admin_audits_path
  end
end
