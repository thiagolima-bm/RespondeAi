class SolutionStepsController < ApplicationController
  load_and_authorize_resource

  # GET /solution_steps/1
  # GET /solution_steps/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @solution_step }
    end
  end

  # GET /solution_steps/new
  # GET /solution_steps/new.json
  def new
    @solution_step.exercise = Exercise.find params[:exercise]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @solution_step }
    end
  end

  # GET /solution_steps/1/edit
  def edit
  end

  # POST /solution_steps
  # POST /solution_steps.json
  def create
    @solution_step.user = current_user

    respond_to do |format|
      if @solution_step.save
        format.html { redirect_to exercise_path(@solution_step.exercise), notice: 'Solution step was successfully created.' }
        format.json { render json: @solution_step, status: :created, location: @solution_step }
      else
        format.html { render action: "new" }
        format.json { render json: @solution_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /solution_steps/1
  # PUT /solution_steps/1.json
  def update
    respond_to do |format|
      if @solution_step.update_attributes(params[:solution_step])
        format.html { redirect_to exercise_path(@solution_step.exercise), notice: 'Solution step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @solution_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solution_steps/1
  # DELETE /solution_steps/1.json
  def destroy
    @solution_step.destroy

    respond_to do |format|
      format.html { redirect_to exercise_path(@solution_step.exercise) }
      format.json { head :no_content }
    end
  end
end
