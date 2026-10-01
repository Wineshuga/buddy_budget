require 'rails_helper'

RSpec.describe 'Category Index Page', type: :feature do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Tom', email: 'tom@gmail.com', password: 'password') }

  before do
    sign_in user
  end
  it 'displays placeholders' do
    visit categories_path

    expect(page).to have_content('Total Expenditure')
    expect(page).to have_link('Add a New Category', href: new_categories_path)
  end

  it 'redirects to add new category page on click' do
    visit categories_path
    click_link 'Add a New Category'
    expect(page).to have_current_path(new_categories_path)
    expect(page).to have_text('Add Category')
    expect(page).to have_link('‹')
  end
end
