require 'rails_helper'
require_relative '../support/devise.rb'

RSpec.describe HomeController, type: :controller do
  describe "GET /" do
    login
    context 'when logged in' do
      it 'should return a 200' do
        get :index
        expect(response).to have_http_status(:success)

      end
    end

  end
end
