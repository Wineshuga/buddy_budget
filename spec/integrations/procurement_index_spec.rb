require 'rails_helper'

RSpec.describe 'Procurement Index Page', type: :feature do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Tom', email: 'tom@gmail.com', password: 'password') }
  let(:cat) { Category.create(name: 'Category', icon: 'https://img.png', author_id: user.id) }

  before do
    user.confirm
    sign_in user
  end
  it 'displays placeholders' do
    visit category_procurements_path(cat)

    expect(page).to have_content('Transaction')
    expect(page).to have_link('Add a New Transaction', href: new_category_procurements_path(category_id: cat.id))
  end

  it 'redirects to add new food page on click' do
    visit category_procurements_path(cat)
    click_link 'Add a New Transaction'
    expect(page).to have_current_path(new_category_procurements_path(category_id: cat.id))
  end
end
