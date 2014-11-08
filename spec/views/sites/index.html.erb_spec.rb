require 'spec_helper'

describe "sites/index" do
  before(:each) do
    assign(:sites, [
      stub_model(Site,
        :category => "Category",
        :title => "Title",
        :description => "MyText",
        :link => "Link"
      ),
      stub_model(Site,
        :category => "Category",
        :title => "Title",
        :description => "MyText",
        :link => "Link"
      )
    ])
  end

  it "renders a list of sites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
