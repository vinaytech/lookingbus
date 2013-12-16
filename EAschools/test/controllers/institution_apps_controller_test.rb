require 'test_helper'

class InstitutionAppsControllerTest < ActionController::TestCase
  setup do
    @institution_app = institution_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institution_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institution_app" do
    assert_difference('InstitutionApp.count') do
      post :create, institution_app: { app_logo: @institution_app.app_logo, app_logo_text: @institution_app.app_logo_text, app_logo_url: @institution_app.app_logo_url, google_url: @institution_app.google_url, institution_id: @institution_app.institution_id, name: @institution_app.name, splash_screen_image: @institution_app.splash_screen_image, splash_screen_slogans: @institution_app.splash_screen_slogans, splash_screen_text: @institution_app.splash_screen_text, splash_screen_url: @institution_app.splash_screen_url }
    end

    assert_redirected_to institution_app_path(assigns(:institution_app))
  end

  test "should show institution_app" do
    get :show, id: @institution_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institution_app
    assert_response :success
  end

  test "should update institution_app" do
    patch :update, id: @institution_app, institution_app: { app_logo: @institution_app.app_logo, app_logo_text: @institution_app.app_logo_text, app_logo_url: @institution_app.app_logo_url, google_url: @institution_app.google_url, institution_id: @institution_app.institution_id, name: @institution_app.name, splash_screen_image: @institution_app.splash_screen_image, splash_screen_slogans: @institution_app.splash_screen_slogans, splash_screen_text: @institution_app.splash_screen_text, splash_screen_url: @institution_app.splash_screen_url }
    assert_redirected_to institution_app_path(assigns(:institution_app))
  end

  test "should destroy institution_app" do
    assert_difference('InstitutionApp.count', -1) do
      delete :destroy, id: @institution_app
    end

    assert_redirected_to institution_apps_path
  end
end
