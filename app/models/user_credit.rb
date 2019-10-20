class UserCredit < ApplicationRecord
  belongs_to :user
  belongs_to :created_by, polymorphic: true
  enum transaction_type: [:debit, :credit]



  class << self

    def add_credit(opts)
      opts[:current_user].user_credits.create(created_by: opts[:payment], credit: opts[:credit], transaction_type: transaction_types['credit'])
    end

    def deducte_credit(opts)
      opts[:current_user].user_credits.create(created_by: opts[:deducted_for], credit: opts[:credit], transaction_type: transaction_types['debit'])
    end

  end

end
