require 'test_helper'

class EtemplatesControllerTest < ActionController::TestCase
  setup do
    @etemplate = etemplates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etemplates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etemplate" do
    assert_difference('Etemplate.count') do
      post :create, etemplate: {  }
    end

    assert_redirected_to etemplate_path(assigns(:etemplate))
  end

  test "should show etemplate" do
    get :show, id: @etemplate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @etemplate
    assert_response :success
  end

  test "should update etemplate" do
    patch :update, id: @etemplate, etemplate: {  }
    assert_redirected_to etemplate_path(assigns(:etemplate))
  end

  test "should destroy etemplate" do
    assert_difference('Etemplate.count', -1) do
      delete :destroy, id: @etemplate
    end

    assert_redirected_to etemplates_path
  end
end
