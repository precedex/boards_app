require 'spec_helper'

describe "resources/index" do
  before(:each) do
    assign(:resources, [
      stub_model(Resource,
        :title => "Title",
        :authors => "Authors",
        :description => "MyText",
        :image_url => "Image Url",
        :link => "Link"
      ),
      stub_model(Resource,
        :title => "Title",
        :authors => "Authors",
        :description => "MyText",
        :image_url => "Image Url",
        :link => "Link"
      )
    ])
  end

  it "renders a list of resources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Authors".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
  end
end
