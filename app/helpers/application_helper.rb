module ApplicationHelper
  def current_coupon
    Coupon.find_by_id session[:coupon]
  end

  def has_credits?
    current_coupon && current_coupon.credits > 0
  end
end
