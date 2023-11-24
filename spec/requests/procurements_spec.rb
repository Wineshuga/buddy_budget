require 'rails_helper'

RSpec.describe 'Procurements', type: :request do
  let(:user) { User.create(name: 'Tom', email: 'tom@gmail.com', password: 'password') }

  before do
    sign_in user
  end

  describe 'GET /index' do
    let(:cat) { Category.create(name: 'Category', icon: 'https://img.png', author_id: user.id) }
    let(:pro) { Procurement.create(name: 'Item', amount: 10, author_id: user.id) }
    let(:categories_procurement) { CategoriesProcurement.create(category: cat, procurement: pro) }
    before do
      get category_procurements_path(cat)
    end

    it 'returns correct status' do
      expect(response.status).to eq(200)
    end

    it 'renders placeholder on page' do
      expect(response.body).to include('Transactions')
    end
  end
end
