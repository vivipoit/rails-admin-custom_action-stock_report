require 'rails_helper'

describe Category do
  it 'responds to Products methods with sum' do
    category = Category.create(name: 'Kitchen')
    Product.create(category: category, name: 'Stove', obtained: 1000, sold: 100)
    Product.create(category: category, name: 'Fridge', obtained: 2000, sold: 200)

    expect(category.obtained).to eq 3000
    expect(category.sold).to eq 300
    expect(category.in_stock).to eq 2700
  end
end
