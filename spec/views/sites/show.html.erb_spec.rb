require 'spec_helper'

describe "sites/show" do
  before(:each) do
    @site = assign(:site, stub_model(Site,
      :category => "Category",
      :title => "Title",
      :description => "MyText",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Link/)
  end
end
