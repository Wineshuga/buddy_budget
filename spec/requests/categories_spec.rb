require 'rails_helper'

RSpec.describe 'Procurements', type: :request do
  let(:user) { User.create(name: 'Tom', email: 'tom@gmail.com', password: 'password') }

  before do
    sign_in user
  end

  describe 'GET /index' do
    let(:cat) { Category.create(name: 'Category', icon: 'https://img.png', author_id: user.id) }
    before do
      get category_procurements_path(cat.id)
    end

    it 'returns correct status' do
      expect(response.status).to eq(302)
    end

    it 'renders placeholder on page' do
      expect(response.body).to include('')
    end
  end
end
