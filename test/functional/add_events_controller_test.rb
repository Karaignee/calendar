require 'test_helper'

class AddEventsControllerTest < ActionController::TestCase
  setup do
    @add_event = add_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_event" do
    assert_difference('AddEvent.count') do
      post :create, add_event: { content: @add_event.content, event_date: @add_event.event_date, event_name: @add_event.event_name }
    end

    assert_redirected_to add_event_path(assigns(:add_event))
  end

  test "should show add_event" do
    get :show, id: @add_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_event
    assert_response :success
  end

  test "should update add_event" do
    put :update, id: @add_event, add_event: { content: @add_event.content, event_date: @add_event.event_date, event_name: @add_event.event_name }
    assert_redirected_to add_event_path(assigns(:add_event))
  end

  test "should destroy add_event" do
    assert_difference('AddEvent.count', -1) do
      delete :destroy, id: @add_event
    end

    assert_redirected_to add_events_path
  end
end
