class User < ActiveRecord::Base
  has_one :address
  has_and_belongs_to_many :events
  has_many :enrollments
  has_many :games, through: :enrollments
  has_one :purse
  has_one :payment_history, through: :purse
  has_many :comments, as: :commentable
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :events
  accepts_nested_attributes_for :games
  accepts_nested_attributes_for :comments
end
