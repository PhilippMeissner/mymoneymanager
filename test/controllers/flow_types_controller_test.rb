require "test_helper"

describe FlowTypesController do

  let(:flow_type) { flow_types :one }

  it "gets index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flow_types)
  end

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates flow_type" do
    assert_difference('FlowType.count') do
      post :create, flow_type: { name: "monthly" }
    end

    assert_redirected_to flow_type_path(assigns(:flow_type))
  end

  it "shows flow_type" do
    get :show, id: flow_type
    assert_response :success
  end

  it "gets edit" do
    get :edit, id: flow_type
    assert_response :success
  end

  it "updates flow_type" do
    put :update, id: flow_type, flow_type: { name: "daily" }
    assert_redirected_to flow_type_path(assigns(:flow_type))
  end

  it "destroys flow_type" do
    assert_difference('FlowType.count', -1) do
      delete :destroy, id: flow_type
    end

    assert_redirected_to flow_types_path
  end

end
