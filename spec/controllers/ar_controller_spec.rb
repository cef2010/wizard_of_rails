require 'rails_helper'

RSpec.describe ArController, type: :controller do

  describe "GET #has_one" do
    it "returns http success" do
      get :has_one
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #has_many" do
    it "returns http success" do
      get :has_many
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #has_many_through" do
    it "returns http success" do
      get :has_many_through
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #belongs_to" do
    it "returns http success" do
      get :belongs_to
      expect(response).to have_http_status(:success)
    end
  end

end
