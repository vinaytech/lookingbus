require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { address_1: @user.address_1, address_2: @user.address_2, blocked: @user.blocked, city: @user.city, country: @user.country, created_by: @user.created_by, created_through: @user.created_through, email: @user.email, first_name: @user.first_name, institution_id: @user.institution_id, last_name: @user.last_name, middle_name: @user.middle_name, mobile_number: @user.mobile_number, password_digest: @user.password_digest, phone_number: @user.phone_number, role_id: @user.role_id, state: @user.state, status: @user.status, zip_code: @user.zip_code }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { address_1: @user.address_1, address_2: @user.address_2, blocked: @user.blocked, city: @user.city, country: @user.country, created_by: @user.created_by, created_through: @user.created_through, email: @user.email, first_name: @user.first_name, institution_id: @user.institution_id, last_name: @user.last_name, middle_name: @user.middle_name, mobile_number: @user.mobile_number, password_digest: @user.password_digest, phone_number: @user.phone_number, role_id: @user.role_id, state: @user.state, status: @user.status, zip_code: @user.zip_code }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
