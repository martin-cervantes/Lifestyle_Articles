require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  let(:valid_attributes) do
    { user_id: 1, content: 'This is a test description' }
  end
  login_user

  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      Article.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end
end
