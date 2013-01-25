class ExercisesController < ApplicationController
  load_and_authorize_resource

  # GET /exercises/1
  # GET /exercises/1.json
  def show
    @solution_steps = SolutionStep.where("exercise_id = ?", params[:id]).order(:number)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercise }
    end
  end

  # GET /exercises/new
  # GET /exercises/new.json
  def new
    @exercise.chapter = Chapter.find params[:chapter]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exercise }
    end
  end

  # GET /exercises/1/edit
  def edit
  end

  # POST /exercises
  # POST /exercises.json
  def create
    respond_to do |format|
      if @exercise.save
        format.html { redirect_to chapter_path(@exercise.chapter_id), notice: 'Exercise was successfully created.' }
        format.json { render json: @exercise, status: :created, location: @exercise }
      else
        format.html { render action: "new" }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exercises/1
  # PUT /exercises/1.json
  def update
    respond_to do |format|
      if @exercise.update_attributes(params[:exercise])
        format.html { redirect_to chapter_path(@exercise.chapter_id), notice: 'Exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises/1
  # DELETE /exercises/1.json
  def destroy
    @exercise.destroy

    respond_to do |format|
      format.html { redirect_to chapter_path(@exercise.chapter_id) }
      format.json { head :no_content }
    end
  end
end
