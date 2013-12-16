require 'test_helper'

class InstitutionAppPagesSectionsControllerTest < ActionController::TestCase
  setup do
    @institution_app_pages_section = institution_app_pages_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institution_app_pages_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institution_app_pages_section" do
    assert_difference('InstitutionAppPagesSection.count') do
      post :create, institution_app_pages_section: { body_text: @institution_app_pages_section.body_text, head_name: @institution_app_pages_section.head_name, institution_app_pages_id: @institution_app_pages_section.institution_app_pages_id }
    end

    assert_redirected_to institution_app_pages_section_path(assigns(:institution_app_pages_section))
  end

  test "should show institution_app_pages_section" do
    get :show, id: @institution_app_pages_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institution_app_pages_section
    assert_response :success
  end

  test "should update institution_app_pages_section" do
    patch :update, id: @institution_app_pages_section, institution_app_pages_section: { body_text: @institution_app_pages_section.body_text, head_name: @institution_app_pages_section.head_name, institution_app_pages_id: @institution_app_pages_section.institution_app_pages_id }
    assert_redirected_to institution_app_pages_section_path(assigns(:institution_app_pages_section))
  end

  test "should destroy institution_app_pages_section" do
    assert_difference('InstitutionAppPagesSection.count', -1) do
      delete :destroy, id: @institution_app_pages_section
    end

    assert_redirected_to institution_app_pages_sections_path
  end
end
