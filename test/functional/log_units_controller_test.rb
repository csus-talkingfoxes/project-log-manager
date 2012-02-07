require 'test_helper'

class LogUnitsControllerTest < ActionController::TestCase
  setup do
    @log_unit = log_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_unit" do
    assert_difference('LogUnit.count') do
      post :create, :log_unit => @log_unit.attributes
    end

    assert_redirected_to log_unit_path(assigns(:log_unit))
  end

  test "should show log_unit" do
    get :show, :id => @log_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @log_unit
    assert_response :success
  end

  test "should update log_unit" do
    put :update, :id => @log_unit, :log_unit => @log_unit.attributes
    assert_redirected_to log_unit_path(assigns(:log_unit))
  end

  test "should destroy log_unit" do
    assert_difference('LogUnit.count', -1) do
      delete :destroy, :id => @log_unit
    end

    assert_redirected_to log_units_path
  end
end
