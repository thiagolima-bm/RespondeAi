require "spec_helper"

describe SolutionStepsController do
  describe "routing" do

    it "routes to #index" do
      get("/solution_steps").should route_to("solution_steps#index")
    end

    it "routes to #new" do
      get("/solution_steps/new").should route_to("solution_steps#new")
    end

    it "routes to #show" do
      get("/solution_steps/1").should route_to("solution_steps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/solution_steps/1/edit").should route_to("solution_steps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/solution_steps").should route_to("solution_steps#create")
    end

    it "routes to #update" do
      put("/solution_steps/1").should route_to("solution_steps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/solution_steps/1").should route_to("solution_steps#destroy", :id => "1")
    end

  end
end
