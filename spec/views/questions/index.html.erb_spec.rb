require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :stem => "Stem",
        :options => "Options",
        :answer => "Answer",
        :topic => "Topic"
      ),
      stub_model(Question,
        :stem => "Stem",
        :options => "Options",
        :answer => "Answer",
        :topic => "Topic"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Stem".to_s, :count => 2
    assert_select "tr>td", :text => "Options".to_s, :count => 2
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
  end
end
