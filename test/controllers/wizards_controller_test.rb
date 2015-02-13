require 'test_helper'

class WizardsControllerTest < ActionController::TestCase
  setup do
    @wizard = wizards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wizards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wizard" do
    assert_difference('Wizard.count') do
      post :create, wizard: { color: @wizard.color, height: @wizard.height, is_good: @wizard.is_good, name: @wizard.name }
    end

    assert_redirected_to wizard_path(assigns(:wizard))
  end

  test "should show wizard" do
    get :show, id: @wizard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wizard
    assert_response :success
  end

  test "should update wizard" do
    patch :update, id: @wizard, wizard: { color: @wizard.color, height: @wizard.height, is_good: @wizard.is_good, name: @wizard.name }
    assert_redirected_to wizard_path(assigns(:wizard))
  end

  test "should destroy wizard" do
    assert_difference('Wizard.count', -1) do
      delete :destroy, id: @wizard
    end

    assert_redirected_to wizards_path
  end
end
