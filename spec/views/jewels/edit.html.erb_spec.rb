require 'spec_helper'

describe "jewels/edit" do
  before(:each) do
    @jewel = assign(:jewel, stub_model(Jewel))
  end

  it "renders the edit jewel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jewel_path(@jewel), "post" do
    end
  end
end
