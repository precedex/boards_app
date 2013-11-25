require 'spec_helper'

describe "questions/show" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :stem => "Stem",
      :options => "Options",
      :answer => "Answer",
      :topic => "Topic"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Stem/)
    rendered.should match(/Options/)
    rendered.should match(/Answer/)
    rendered.should match(/Topic/)
  end
end
