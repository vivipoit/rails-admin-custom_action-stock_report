class Product < ApplicationRecord
  belongs_to :category

  def in_stock
    obtained - sold
  end
end
