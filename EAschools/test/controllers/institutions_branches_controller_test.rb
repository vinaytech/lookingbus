require 'test_helper'

class InstitutionsBranchesControllerTest < ActionController::TestCase
  setup do
    @institutions_branch = institutions_branches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institutions_branches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institutions_branch" do
    assert_difference('InstitutionsBranch.count') do
      post :create, institutions_branch: { address_1: @institutions_branch.address_1, address_2: @institutions_branch.address_2, country: @institutions_branch.country, institution_id: @institutions_branch.institution_id, land_mark: @institutions_branch.land_mark, state: @institutions_branch.state, status: @institutions_branch.status, zip_code: @institutions_branch.zip_code }
    end

    assert_redirected_to institutions_branch_path(assigns(:institutions_branch))
  end

  test "should show institutions_branch" do
    get :show, id: @institutions_branch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institutions_branch
    assert_response :success
  end

  test "should update institutions_branch" do
    patch :update, id: @institutions_branch, institutions_branch: { address_1: @institutions_branch.address_1, address_2: @institutions_branch.address_2, country: @institutions_branch.country, institution_id: @institutions_branch.institution_id, land_mark: @institutions_branch.land_mark, state: @institutions_branch.state, status: @institutions_branch.status, zip_code: @institutions_branch.zip_code }
    assert_redirected_to institutions_branch_path(assigns(:institutions_branch))
  end

  test "should destroy institutions_branch" do
    assert_difference('InstitutionsBranch.count', -1) do
      delete :destroy, id: @institutions_branch
    end

    assert_redirected_to institutions_branches_path
  end
end
