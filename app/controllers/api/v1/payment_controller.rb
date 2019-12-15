class Api::V1::PaymentController < Api::V1::BaseController
  before_action :authenticate_user
  
  def initiate_payment
    plan = Plan.find(params[:plan_id])
    order = Razorpay::Order.create amount: plan.total_price_to_paise.to_i, currency: 'INR', receipt: 'TEST' 
    render json: order
  end

  def buy_plan
    payment = Payment.buy_plan(buy_plan_params.to_h, nil) #todo please update nil to current_user
    if payment
      render json: { plan: payment.payable, payment: payment }
    else
      render json: { plan: nil, payment: nil }, status: :unprocessable_entity
    end
  end

  private

  def buy_plan_params
    params.require(:plan).permit(:razorpay_payment_id, :razorpay_order_id, :razorpay_signature, :plan_id)
  end

end
