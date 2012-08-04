require 'test_helper'

class SysCleansControllerTest < ActionController::TestCase
  setup do
    @sys_clean = sys_cleans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sys_cleans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sys_clean" do
    assert_difference('SysClean.count') do
      post :create, sys_clean: { new_packages: @sys_clean.new_packages, sys_op_id: @sys_clean.sys_op_id, trash_bin_contents: @sys_clean.trash_bin_contents }
    end

    assert_redirected_to sys_clean_path(assigns(:sys_clean))
  end

  test "should show sys_clean" do
    get :show, id: @sys_clean
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sys_clean
    assert_response :success
  end

  test "should update sys_clean" do
    put :update, id: @sys_clean, sys_clean: { new_packages: @sys_clean.new_packages, sys_op_id: @sys_clean.sys_op_id, trash_bin_contents: @sys_clean.trash_bin_contents }
    assert_redirected_to sys_clean_path(assigns(:sys_clean))
  end

  test "should destroy sys_clean" do
    assert_difference('SysClean.count', -1) do
      delete :destroy, id: @sys_clean
    end

    assert_redirected_to sys_cleans_path
  end
end
