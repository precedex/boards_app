require 'spec_helper'

describe "jewels/index" do
  before(:each) do
    assign(:jewels, [
      stub_model(Jewel),
      stub_model(Jewel)
    ])
  end

  it "renders a list of jewels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
