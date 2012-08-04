require 'test_helper'

class SysOpsControllerTest < ActionController::TestCase
  setup do
    @sys_op = sys_ops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sys_ops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sys_op" do
    assert_difference('SysOp.count') do
      post :create, sys_op: { start_time_column: @sys_op.start_time_column, title: @sys_op.title }
    end

    assert_redirected_to sys_op_path(assigns(:sys_op))
  end

  test "should show sys_op" do
    get :show, id: @sys_op
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sys_op
    assert_response :success
  end

  test "should update sys_op" do
    put :update, id: @sys_op, sys_op: { start_time_column: @sys_op.start_time_column, title: @sys_op.title }
    assert_redirected_to sys_op_path(assigns(:sys_op))
  end

  test "should destroy sys_op" do
    assert_difference('SysOp.count', -1) do
      delete :destroy, id: @sys_op
    end

    assert_redirected_to sys_ops_path
  end
end
