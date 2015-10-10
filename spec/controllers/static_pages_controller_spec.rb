require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #js" do
    it "returns http success" do
      get :js
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #development" do
    it "returns http success" do
      get :development
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #html" do
    it "returns http success" do
      get :html
      expect(response).to have_http_status(:success)
    end
  end

end
