require 'spec_helper'

describe "resources/new" do
  before(:each) do
    assign(:resource, stub_model(Resource,
      :title => "MyString",
      :authors => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :link => "MyString"
    ).as_new_record)
  end

  it "renders new resource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resources_path, "post" do
      assert_select "input#resource_title[name=?]", "resource[title]"
      assert_select "input#resource_authors[name=?]", "resource[authors]"
      assert_select "textarea#resource_description[name=?]", "resource[description]"
      assert_select "input#resource_image_url[name=?]", "resource[image_url]"
      assert_select "input#resource_link[name=?]", "resource[link]"
    end
  end
end
