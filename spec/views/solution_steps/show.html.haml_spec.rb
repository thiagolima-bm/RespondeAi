require 'spec_helper'

describe "solution_steps/show" do
  before(:each) do
    @solution_step = assign(:solution_step, stub_model(SolutionStep,
      :number => "Number",
      :body => "MyText",
      :exercise_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
