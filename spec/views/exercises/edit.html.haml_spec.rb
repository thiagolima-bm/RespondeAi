require 'spec_helper'

describe "exercises/edit" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
      :number => "MyString",
      :chapter_id => 1
    ))
  end

  it "renders the edit exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exercises_path(@exercise), :method => "post" do
      assert_select "input#exercise_number", :name => "exercise[number]"
      assert_select "input#exercise_chapter_id", :name => "exercise[chapter_id]"
    end
  end
end
