require 'test_helper'

class ApplistsControllerTest < ActionController::TestCase
  setup do
    @applist = applists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applist" do
    assert_difference('Applist.count') do
      post :create, applist: { appdescr: @applist.appdescr, applink: @applist.applink, appname: @applist.appname }
    end

    assert_redirected_to applist_path(assigns(:applist))
  end

  test "should show applist" do
    get :show, id: @applist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applist
    assert_response :success
  end

  test "should update applist" do
    patch :update, id: @applist, applist: { appdescr: @applist.appdescr, applink: @applist.applink, appname: @applist.appname }
    assert_redirected_to applist_path(assigns(:applist))
  end

  test "should destroy applist" do
    assert_difference('Applist.count', -1) do
      delete :destroy, id: @applist
    end

    assert_redirected_to applists_path
  end
end
