require 'test_helper'

class RepresenativesControllerTest < ActionController::TestCase
  setup do
    @represenative = represenatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:represenatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create represenative" do
    assert_difference('Represenative.count') do
      post :create, represenative: {  }
    end

    assert_redirected_to represenative_path(assigns(:represenative))
  end

  test "should show represenative" do
    get :show, id: @represenative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @represenative
    assert_response :success
  end

  test "should update represenative" do
    patch :update, id: @represenative, represenative: {  }
    assert_redirected_to represenative_path(assigns(:represenative))
  end

  test "should destroy represenative" do
    assert_difference('Represenative.count', -1) do
      delete :destroy, id: @represenative
    end

    assert_redirected_to represenatives_path
  end
end
