# -*- encoding : utf-8 -*-
class QuestionsController < ApplicationController
  before_filter :reset_coupon
  before_filter :valid_coupon, only: [:new, :create]
  def index
  end

  def new
  end

  def create
    coupon = Coupon.find_by_id session[:coupon]
    if coupon && coupon.credits
      coupon.credits -= 1
      coupon.save
      QuestionMailer.send_question(params[:title], params[:question], session[:email])
      redirect_to :root, notice: "Dúvida enviada. Fique atento à sua caixa de mensagens!"
    end
  end

  def login
    @coupon = Coupon.find_by_code params[:code]
    if @coupon
      session[:coupon] = @coupon.id
      session[:email] = params[:email]
      redirect_to new_question_path, notice: "Você está logado e ainda tem #{@coupon.credits} créditos."
    else
      redirect_to :root, alert: "Código inválido"
    end
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
