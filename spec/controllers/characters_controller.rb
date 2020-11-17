require 'rails_helper'

RSpec.describe CharactersController, type: :controller do
  describe 'GET #index' do
    let(:characters) { FactoryBot.create_list(:character, 10) }

    it 'renders index page' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'assigns all characters to @characters' do
      get :index
      expect(assigns(:characters)).to include(*characters)
    end
  end
end