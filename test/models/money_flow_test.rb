require "test_helper"

describe MoneyFlow do
  let(:money_flow) { MoneyFlow.new }

  it "must be valid" do
    money_flow.amount_cents = 10
    money_flow.name = "A money flow"
    money_flow.flow_type = "monthly"
    money_flow.must_be :valid?
  end

  it "must be invalid" do
    money_flow.must_be :invalid?
  end

  it "must have more than 0 cents" do
    money_flow.amount_cents = 0
    money_flow.name = "A money flow"
    money_flow.flow_type = "monthly"
    money_flow.must_be :invalid?
  end

  it "should not save a money flow without name" do
    money_flow.amount_cents = 10
    money_flow.flow_type = "monthly"
    assert_not money_flow.save
  end

  it "should not save a money flow without flow_type" do
    money_flow.amount_cents = 10
    money_flow.name = "A money flow"
    assert_not money_flow.save
  end

  it "should not save a money flow with amount equal to or less than 0" do
    money_flow.amount_cents = 0
    money_flow.flow_type = "monthly"
    assert_not money_flow.save
    money_flow.amount_cents = -1
    assert_not money_flow.save
  end
end
