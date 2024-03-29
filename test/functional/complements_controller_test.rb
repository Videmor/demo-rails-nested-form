require 'test_helper'

class ComplementsControllerTest < ActionController::TestCase
  setup do
    @complement = complements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complement" do
    assert_difference('Complement.count') do
      post :create, complement: { name: @complement.name, project_id: @complement.project_id }
    end

    assert_redirected_to complement_path(assigns(:complement))
  end

  test "should show complement" do
    get :show, id: @complement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complement
    assert_response :success
  end

  test "should update complement" do
    put :update, id: @complement, complement: { name: @complement.name, project_id: @complement.project_id }
    assert_redirected_to complement_path(assigns(:complement))
  end

  test "should destroy complement" do
    assert_difference('Complement.count', -1) do
      delete :destroy, id: @complement
    end

    assert_redirected_to complements_path
  end
end
