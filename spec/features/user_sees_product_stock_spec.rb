require 'rails_helper'

feature 'user sees product stock' do
  scenario 'sucessfully' do
    category = Category.create(name: 'Kitchen')
    Product.create(category: category, name: 'Stove', obtained: 30, sold: 20)

    visit rails_admin_path
    within '.sidebar-nav' do
      click_on 'Products'
    end
    click_on 'Stock Report'

    expect(page).to have_content 'Stove'
    expect(page).to have_content '30'
    expect(page).to have_content '20'
    expect(page).to have_content '10'
  end
end
