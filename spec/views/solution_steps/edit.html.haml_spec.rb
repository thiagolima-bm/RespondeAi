require 'spec_helper'

describe "solution_steps/edit" do
  before(:each) do
    @solution_step = assign(:solution_step, stub_model(SolutionStep,
      :number => "MyString",
      :body => "MyText",
      :exercise_id => 1
    ))
  end

  it "renders the edit solution_step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => solution_steps_path(@solution_step), :method => "post" do
      assert_select "input#solution_step_number", :name => "solution_step[number]"
      assert_select "textarea#solution_step_body", :name => "solution_step[body]"
      assert_select "input#solution_step_exercise_id", :name => "solution_step[exercise_id]"
    end
  end
end
