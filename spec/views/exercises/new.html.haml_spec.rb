require 'spec_helper'

describe "exercises/new" do
  before(:each) do
    assign(:exercise, stub_model(Exercise,
      :number => "MyString",
      :chapter_id => 1
    ).as_new_record)
  end

  it "renders new exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exercises_path, :method => "post" do
      assert_select "input#exercise_number", :name => "exercise[number]"
      assert_select "input#exercise_chapter_id", :name => "exercise[chapter_id]"
    end
  end
end
