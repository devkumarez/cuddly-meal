# == Schema Information
#
# Table name: payments
#
#  id           :bigint           not null, primary key
#  payment_json :jsonb
#  payable_type :string
#  payable_id   :bigint
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Payment < ApplicationRecord
  belongs_to :payable, polymorphic: true
  has_many :user_credits, as: :created_by
  belongs_to :user

  class << self

    def buy_plan(opts, current_user)
      payment = nil
      ## todo
      current_user = User.last if current_user.nil?
      plan = Plan.find(opts.delete('plan_id'))
      if verify_payment(opts)
        payment = capture_payment(opts, plan)
        if payment.status == 'captured'
          payment = current_user.payments.create(payment_json: payment.attributes, payable: plan)
          UserCredit.add_credit({current_user: current_user, payment: payment, credit: plan.total_credit})
        end
      end
      payment
    end

    def verify_payment(opts)
      Razorpay::Utility.verify_payment_signature(opts)
    end

    def capture_payment(opts, plan)
      Razorpay::Payment.fetch(opts[:razorpay_payment_id]).capture!({amount: plan.total_price_to_paise.to_i})
    end
    
  end
  

end
