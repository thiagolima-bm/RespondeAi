# -*- encoding : utf-8 -*-
class QuestionsController < ApplicationController
  before_filter :reset_coupon
  before_filter :valid_coupon, only: [:new, :create]
  def index
  end

  def new
  end

  def about
  end

  def create
    coupon = Coupon.find_by_id session[:coupon]
    if coupon && coupon.credits
      coupon.save
      if QuestionMailer.send_question(params[:title], params[:question], session[:email], coupon.code).deliver
        coupon.credits -= 1
        redirect_to :root, notice: "Opa! Sua dúvida foi enviada."
      else
        redirect_to :root, notice: "Algum erro ocorreu"
      end
    end
  end

  # those methods should be in another controller, but I'll keep that here for now.
  def login
    @coupon = Coupon.find_by_code params[:code]
    if @coupon
      if params[:email] =~ /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
        session[:coupon] = @coupon.id
        session[:email] = params[:email]
        redirect_to new_question_path, notice: "Você está logado como #{session[:email]} e ainda tem #{@coupon.credits} créditos."
      else
        redirect_to :root, alert: "Email inválido"
      end
    else
      redirect_to :root, alert: "Código inválido"
    end
  end

  def logout
    session[:coupon] = nil
    session[:email] = nil
    redirect_to :root, notice: "Você desconectou. Volte sempre!"
  end

  private
    def valid_coupon
      redirect_to "/" unless session[:coupon]
    end

    def reset_coupon
      current_coupon = Coupon.find_by_id session[:coupon]
      unless current_coupon && current_coupon.credits > 0
        session[:coupon] = nil
        session[:email] = nil
      end
    end
end
