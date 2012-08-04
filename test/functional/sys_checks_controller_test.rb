require 'test_helper'

class SysChecksControllerTest < ActionController::TestCase
  setup do
    @sys_check = sys_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sys_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sys_check" do
    assert_difference('SysCheck.count') do
      post :create, sys_check: { hd_usage: @sys_check.hd_usage, mem_usage: @sys_check.mem_usage, sys_op_id: @sys_check.sys_op_id, time_running: @sys_check.time_running }
    end

    assert_redirected_to sys_check_path(assigns(:sys_check))
  end

  test "should show sys_check" do
    get :show, id: @sys_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sys_check
    assert_response :success
  end

  test "should update sys_check" do
    put :update, id: @sys_check, sys_check: { hd_usage: @sys_check.hd_usage, mem_usage: @sys_check.mem_usage, sys_op_id: @sys_check.sys_op_id, time_running: @sys_check.time_running }
    assert_redirected_to sys_check_path(assigns(:sys_check))
  end

  test "should destroy sys_check" do
    assert_difference('SysCheck.count', -1) do
      delete :destroy, id: @sys_check
    end

    assert_redirected_to sys_checks_path
  end
end
