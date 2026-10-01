require 'rails_helper'

RSpec.describe 'Procurements', type: :request do
  let(:user) { User.create(name: 'Tom', email: 'tom@gmail.com', password: 'password') }

  before do
    sign_in user
  end

  describe 'GET /index' do
    let(:cat) { Category.create(name: 'Category', author_id: user.id) }
    let(:pro) do
      Procurement.create(name: 'Item', amount: 10, date: Date.new(2022, 11, 10), category_ids: [cat.id],
                         author_id: user.id)
    end
    let(:categories_procurement) { CategoriesProcurement.create(category: cat, procurement: pro) }

    before do
      categories_procurement
      get category_procurements_path(cat)
    end

    it 'returns correct status' do
      expect(response.status).to eq(200)
    end

    it 'renders placeholder on page' do
      expect(response.body).to include('🧾')
    end
  end
end
