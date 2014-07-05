class Lending < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  scope :borrowed, -> { where(return_date: nil) }
end
