require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :stem => "MyString",
      :options => "MyString",
      :answer => "MyString",
      :topic => "MyString"
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questions_path, "post" do
      assert_select "input#question_stem[name=?]", "question[stem]"
      assert_select "input#question_options[name=?]", "question[options]"
      assert_select "input#question_answer[name=?]", "question[answer]"
      assert_select "input#question_topic[name=?]", "question[topic]"
    end
  end
end
