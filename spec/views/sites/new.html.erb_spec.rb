require 'spec_helper'

describe "sites/new" do
  before(:each) do
    assign(:site, stub_model(Site,
      :category => "MyString",
      :title => "MyString",
      :description => "MyText",
      :link => "MyString"
    ).as_new_record)
  end

  it "renders new site form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sites_path, "post" do
      assert_select "input#site_category[name=?]", "site[category]"
      assert_select "input#site_title[name=?]", "site[title]"
      assert_select "textarea#site_description[name=?]", "site[description]"
      assert_select "input#site_link[name=?]", "site[link]"
    end
  end
end
