require 'test_helper'

class NotificationsControllerTest < ActionController::TestCase
  setup do
    @notification = notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notification" do
    assert_difference('Notification.count') do
      post :create, notification: { active: @notification.active, created_by: @notification.created_by, description: @notification.description, end_at: @notification.end_at, head: @notification.head, institution_app_id: @notification.institution_app_id, institution_id: @notification.institution_id, start_at: @notification.start_at, status: @notification.status }
    end

    assert_redirected_to notification_path(assigns(:notification))
  end

  test "should show notification" do
    get :show, id: @notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notification
    assert_response :success
  end

  test "should update notification" do
    patch :update, id: @notification, notification: { active: @notification.active, created_by: @notification.created_by, description: @notification.description, end_at: @notification.end_at, head: @notification.head, institution_app_id: @notification.institution_app_id, institution_id: @notification.institution_id, start_at: @notification.start_at, status: @notification.status }
    assert_redirected_to notification_path(assigns(:notification))
  end

  test "should destroy notification" do
    assert_difference('Notification.count', -1) do
      delete :destroy, id: @notification
    end

    assert_redirected_to notifications_path
  end
end
