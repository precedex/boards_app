require 'spec_helper'

describe "resources/show" do
  before(:each) do
    @resource = assign(:resource, stub_model(Resource,
      :title => "Title",
      :authors => "Authors",
      :description => "MyText",
      :image_url => "Image Url",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Authors/)
    rendered.should match(/MyText/)
    rendered.should match(/Image Url/)
    rendered.should match(/Link/)
  end
end
