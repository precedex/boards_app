require 'spec_helper'

describe "Static Pages" do
  
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
  end
  
  describe "Welcome page" do
    before { visit root_path }
    let(:heading)    { 'Welcome' }
    it_should_behave_like "all static pages"
  end
  
  describe "Feedback page" do
    before { visit feedback_path }
    let(:heading)    { 'Feedback' }
    it_should_behave_like "all static pages"
  end
  
  describe "Resources page" do
    before { visit resources_path }
    let(:heading)    { 'Resources' }
    it_should_behave_like "all static pages"
  end
  
  describe "Search page" do
    before { visit search_path }
    let(:heading)    { 'Search' }
    it_should_behave_like "all static pages"
  end
end
