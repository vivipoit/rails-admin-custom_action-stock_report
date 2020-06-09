require 'rails_helper'

feature 'user creates category' do
  scenario 'sucessfully' do
    visit rails_admin_path
    within '.sidebar-nav' do
      click_on 'Categories'
    end
    click_on 'Add new'

    fill_in 'Name', with: 'Kitchen'
    click_on 'Save'

    expect(page).to have_content 'Category successfully created'
    expect(page).to have_content 'Kitchen'
  end
end
