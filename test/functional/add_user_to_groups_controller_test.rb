require 'test_helper'

class AddUserToGroupsControllerTest < ActionController::TestCase
  setup do
    @add_user_to_group = add_user_to_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_user_to_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_user_to_group" do
    assert_difference('AddUserToGroup.count') do
      post :create, :add_user_to_group => @add_user_to_group.attributes
    end

    assert_redirected_to add_user_to_group_path(assigns(:add_user_to_group))
  end

  test "should show add_user_to_group" do
    get :show, :id => @add_user_to_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @add_user_to_group.to_param
    assert_response :success
  end

  test "should update add_user_to_group" do
    put :update, :id => @add_user_to_group.to_param, :add_user_to_group => @add_user_to_group.attributes
    assert_redirected_to add_user_to_group_path(assigns(:add_user_to_group))
  end

  test "should destroy add_user_to_group" do
    assert_difference('AddUserToGroup.count', -1) do
      delete :destroy, :id => @add_user_to_group.to_param
    end

    assert_redirected_to add_user_to_groups_path
  end
end
