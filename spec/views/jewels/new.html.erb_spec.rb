require 'spec_helper'

describe "jewels/new" do
  before(:each) do
    assign(:jewel, stub_model(Jewel).as_new_record)
  end

  it "renders new jewel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jewels_path, "post" do
    end
  end
end
