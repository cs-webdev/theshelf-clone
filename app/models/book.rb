class Book < ActiveRecord::Base
  has_many :lendings

  #extrair
  def lent_to?(user)
    lendings.where(return_date: nil, user: user).any?
  end

  def lent?
    lendings.borrowed.any?
  end

  def borrower
    lendings.borrowed.first.user
  end
end
