require 'test_helper'

class AgendaCheckinsControllerTest < ActionController::TestCase
  setup do
    @agenda_checkin = agenda_checkins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenda_checkins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenda_checkin" do
    assert_difference('AgendaCheckin.count') do
      post :create, :agenda_checkin => @agenda_checkin.attributes
    end

    assert_redirected_to agenda_checkin_path(assigns(:agenda_checkin))
  end

  test "should show agenda_checkin" do
    get :show, :id => @agenda_checkin
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @agenda_checkin
    assert_response :success
  end

  test "should update agenda_checkin" do
    put :update, :id => @agenda_checkin, :agenda_checkin => @agenda_checkin.attributes
    assert_redirected_to agenda_checkin_path(assigns(:agenda_checkin))
  end

  test "should destroy agenda_checkin" do
    assert_difference('AgendaCheckin.count', -1) do
      delete :destroy, :id => @agenda_checkin
    end

    assert_redirected_to agenda_checkins_path
  end
end
