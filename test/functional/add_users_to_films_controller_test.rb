require 'test_helper'

class AddUsersToFilmsControllerTest < ActionController::TestCase
  setup do
    @add_users_to_film = add_users_to_films(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_users_to_films)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_users_to_film" do
    assert_difference('AddUsersToFilm.count') do
      post :create, :add_users_to_film => @add_users_to_film.attributes
    end

    assert_redirected_to add_users_to_film_path(assigns(:add_users_to_film))
  end

  test "should show add_users_to_film" do
    get :show, :id => @add_users_to_film.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @add_users_to_film.to_param
    assert_response :success
  end

  test "should update add_users_to_film" do
    put :update, :id => @add_users_to_film.to_param, :add_users_to_film => @add_users_to_film.attributes
    assert_redirected_to add_users_to_film_path(assigns(:add_users_to_film))
  end

  test "should destroy add_users_to_film" do
    assert_difference('AddUsersToFilm.count', -1) do
      delete :destroy, :id => @add_users_to_film.to_param
    end

    assert_redirected_to add_users_to_films_path
  end
end
