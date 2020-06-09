require 'rails_helper'

feature 'user sees category stock' do
  scenario 'sucessfully' do
    category1 = Category.create(name: 'Kitchen')
    Product.create(category: category1, name: 'Stove', obtained: 1000, sold: 100)
    Product.create(category: category1, name: 'Fridge', obtained: 2000, sold: 200)

    category2 = Category.create(name: 'Outdoor')
    Product.create(category: category2, name: 'Grill', obtained: 10, sold: 9)

    visit rails_admin_path
    within '.sidebar-nav' do
      click_on 'Categories'
    end
    click_on 'Stock Report'

    expect(page).to have_content 'Kitchen'
    expect(page).to have_content '3000'
    expect(page).to have_content '300'
    expect(page).to have_content '2700'

    expect(page).to have_content 'Outdoor'
    expect(page).to have_content '10'
    expect(page).to have_content '9'
    expect(page).to have_content '1'
  end
end
