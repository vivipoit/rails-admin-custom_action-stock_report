require 'rails_helper'

feature 'user creates category' do
  scenario 'sucessfully' do
    Category.create(name: 'Kitchen')

    visit rails_admin_path
    within '.sidebar-nav' do
      click_on 'Products'
    end
    click_on 'Add new'

    select 'Kitchen', from: 'Category'
    fill_in 'Name', with: 'Stove'
    click_on 'Save'

    expect(page).to have_content 'Product successfully created'
    expect(page).to have_content 'Kitchen Stove'
  end
end
