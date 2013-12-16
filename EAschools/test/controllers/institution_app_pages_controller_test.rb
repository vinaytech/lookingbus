require 'test_helper'

class InstitutionAppPagesControllerTest < ActionController::TestCase
  setup do
    @institution_app_page = institution_app_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institution_app_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institution_app_page" do
    assert_difference('InstitutionAppPage.count') do
      post :create, institution_app_page: { institution_app_id: @institution_app_page.institution_app_id, name: @institution_app_page.name, url: @institution_app_page.url }
    end

    assert_redirected_to institution_app_page_path(assigns(:institution_app_page))
  end

  test "should show institution_app_page" do
    get :show, id: @institution_app_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institution_app_page
    assert_response :success
  end

  test "should update institution_app_page" do
    patch :update, id: @institution_app_page, institution_app_page: { institution_app_id: @institution_app_page.institution_app_id, name: @institution_app_page.name, url: @institution_app_page.url }
    assert_redirected_to institution_app_page_path(assigns(:institution_app_page))
  end

  test "should destroy institution_app_page" do
    assert_difference('InstitutionAppPage.count', -1) do
      delete :destroy, id: @institution_app_page
    end

    assert_redirected_to institution_app_pages_path
  end
end
