require 'test_helper'

class AgendaTypesControllerTest < ActionController::TestCase
  setup do
    @agenda_type = agenda_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenda_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenda_type" do
    assert_difference('AgendaType.count') do
      post :create, :agenda_type => @agenda_type.attributes
    end

    assert_redirected_to agenda_type_path(assigns(:agenda_type))
  end

  test "should show agenda_type" do
    get :show, :id => @agenda_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @agenda_type
    assert_response :success
  end

  test "should update agenda_type" do
    put :update, :id => @agenda_type, :agenda_type => @agenda_type.attributes
    assert_redirected_to agenda_type_path(assigns(:agenda_type))
  end

  test "should destroy agenda_type" do
    assert_difference('AgendaType.count', -1) do
      delete :destroy, :id => @agenda_type
    end

    assert_redirected_to agenda_types_path
  end
end
