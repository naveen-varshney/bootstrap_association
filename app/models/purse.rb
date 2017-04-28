class Purse < ActiveRecord::Base
  belongs_to :user
  has_one :payment_history
end
