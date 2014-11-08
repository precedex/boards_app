require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :stem => "MyString",
      :options => "MyString",
      :answer => "MyString",
      :topic => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", question_path(@question), "post" do
      assert_select "input#question_stem[name=?]", "question[stem]"
      assert_select "input#question_options[name=?]", "question[options]"
      assert_select "input#question_answer[name=?]", "question[answer]"
      assert_select "input#question_topic[name=?]", "question[topic]"
    end
  end
end
