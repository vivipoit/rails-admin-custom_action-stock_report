class Category < ApplicationRecord
  has_many :products

  def obtained
    products.sum(:obtained)
  end

  def sold
    products.sum(:sold)
  end

  def in_stock
    obtained - sold
  end
end
