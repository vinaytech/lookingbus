require 'test_helper'

class InstitutionsControllerTest < ActionController::TestCase
  setup do
    @institution = institutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institution" do
    assert_difference('Institution.count') do
      post :create, institution: { account_type_id: @institution.account_type_id, institution_key: @institution.institution_key, name: @institution.name, number_of_institution_branch: @institution.number_of_institution_branch, number_of_vehicle: @institution.number_of_vehicle, status: @institution.status }
    end

    assert_redirected_to institution_path(assigns(:institution))
  end

  test "should show institution" do
    get :show, id: @institution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institution
    assert_response :success
  end

  test "should update institution" do
    patch :update, id: @institution, institution: { account_type_id: @institution.account_type_id, institution_key: @institution.institution_key, name: @institution.name, number_of_institution_branch: @institution.number_of_institution_branch, number_of_vehicle: @institution.number_of_vehicle, status: @institution.status }
    assert_redirected_to institution_path(assigns(:institution))
  end

  test "should destroy institution" do
    assert_difference('Institution.count', -1) do
      delete :destroy, id: @institution
    end

    assert_redirected_to institutions_path
  end
end
