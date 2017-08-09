require 'spec_helper'

describe "jewels/show" do
  before(:each) do
    @jewel = assign(:jewel, stub_model(Jewel))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
