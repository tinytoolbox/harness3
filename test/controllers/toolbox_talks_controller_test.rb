require 'test_helper'

class ToolboxTalksControllerTest < ActionController::TestCase
  setup do
    @toolbox_talk = toolbox_talks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toolbox_talks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toolbox_talk" do
    assert_difference('ToolboxTalk.count') do
      post :create, toolbox_talk: { attendees: @toolbox_talk.attendees, comments: @toolbox_talk.comments, confirm: @toolbox_talk.confirm, inspection_comments: @toolbox_talk.inspection_comments, inspections: @toolbox_talk.inspections, invoice_date: @toolbox_talk.invoice_date, topics: @toolbox_talk.topics, user_id: @toolbox_talk.user_id }
    end

    assert_redirected_to toolbox_talk_path(assigns(:toolbox_talk))
  end

  test "should show toolbox_talk" do
    get :show, id: @toolbox_talk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toolbox_talk
    assert_response :success
  end

  test "should update toolbox_talk" do
    patch :update, id: @toolbox_talk, toolbox_talk: { attendees: @toolbox_talk.attendees, comments: @toolbox_talk.comments, confirm: @toolbox_talk.confirm, inspection_comments: @toolbox_talk.inspection_comments, inspections: @toolbox_talk.inspections, invoice_date: @toolbox_talk.invoice_date, topics: @toolbox_talk.topics, user_id: @toolbox_talk.user_id }
    assert_redirected_to toolbox_talk_path(assigns(:toolbox_talk))
  end

  test "should destroy toolbox_talk" do
    assert_difference('ToolboxTalk.count', -1) do
      delete :destroy, id: @toolbox_talk
    end

    assert_redirected_to toolbox_talks_path
  end
end
