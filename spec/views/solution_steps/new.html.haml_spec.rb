require 'spec_helper'

describe "solution_steps/new" do
  before(:each) do
    assign(:solution_step, stub_model(SolutionStep,
      :number => "MyString",
      :body => "MyText",
      :exercise_id => 1
    ).as_new_record)
  end

  it "renders new solution_step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => solution_steps_path, :method => "post" do
      assert_select "input#solution_step_number", :name => "solution_step[number]"
      assert_select "textarea#solution_step_body", :name => "solution_step[body]"
      assert_select "input#solution_step_exercise_id", :name => "solution_step[exercise_id]"
    end
  end
end
