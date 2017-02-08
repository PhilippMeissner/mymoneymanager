require "test_helper"

describe FlowType do
  let(:flow_type) { FlowType.new }

  it "must be valid" do
    flow_type.name = "recurring"
    flow_type.must_be :valid?
  end

  it "must be invalid" do
    flow_type.name = nil
    flow_type.must_be :invalid?
  end
end
