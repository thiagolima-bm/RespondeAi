# -*- encoding : utf-8 -*-
class CommentsController < ApplicationController
  load_and_authorize_resource

  def create
    @comment.solution_step = SolutionStep.find params[:solution_step_id]
    @comment.user = current_user
    if @comment.save
      redirect_to :back, notice: "Comentário adicionado."
    else
      redirect_to :back, warning: "Não foi possível adicionar o seu comentário."
    end
  end

  def destroy
  end
end
