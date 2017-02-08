require "test_helper"

describe MoneyFlowsController do

  let(:money_flow) { money_flows :one }

  it "gets index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:money_flows)
  end

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates money_flow" do
    assert_difference('MoneyFlow.count') do
      post :create, money_flow: { amount_cents: 123, description: "A description", flow_type: "monthly", name: "Money flow" }
    end

    assert_redirected_to money_flow_path(assigns(:money_flow))
  end

  it "shows money_flow" do
    get :show, id: money_flow
    assert_response :success
  end

  it "gets edit" do
    get :edit, id: money_flow
    assert_response :success
  end

  it "updates money_flow" do
    put :update, id: money_flow, money_flow: { amount_cents: 123, description: "Another description", flow_type: "daily", name: "New name" }
    assert_redirected_to money_flow_path(assigns(:money_flow))
  end

  it "destroys money_flow" do
    assert_difference('MoneyFlow.count', -1) do
      delete :destroy, id: money_flow
    end

    assert_redirected_to money_flows_path
  end

end
