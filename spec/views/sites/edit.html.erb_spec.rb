require 'spec_helper'

describe "sites/edit" do
  before(:each) do
    @site = assign(:site, stub_model(Site,
      :category => "MyString",
      :title => "MyString",
      :description => "MyText",
      :link => "MyString"
    ))
  end

  it "renders the edit site form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", site_path(@site), "post" do
      assert_select "input#site_category[name=?]", "site[category]"
      assert_select "input#site_title[name=?]", "site[title]"
      assert_select "textarea#site_description[name=?]", "site[description]"
      assert_select "input#site_link[name=?]", "site[link]"
    end
  end
end
