require 'test_helper'

module Clogs
  class ClogsControllerTest < ActionController::TestCase
    setup do
      @clog = clogs(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:clogs)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create clog" do
      assert_difference('Clog.count') do
        post :create, clog: { controller: @clog.controller, db_runtime: @clog.db_runtime, path: @clog.path, status: @clog.status, view_runtime: @clog.view_runtime }
      end
  
      assert_redirected_to clog_path(assigns(:clog))
    end
  
    test "should show clog" do
      get :show, id: @clog
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @clog
      assert_response :success
    end
  
    test "should update clog" do
      put :update, id: @clog, clog: { controller: @clog.controller, db_runtime: @clog.db_runtime, path: @clog.path, status: @clog.status, view_runtime: @clog.view_runtime }
      assert_redirected_to clog_path(assigns(:clog))
    end
  
    test "should destroy clog" do
      assert_difference('Clog.count', -1) do
        delete :destroy, id: @clog
      end
  
      assert_redirected_to clogs_path
    end
  end
end
