require 'rails_helper'

RSpec.describe AcDemosController, type: :controller do
let(:ac_demo){FactoryGirl.create(:ac_demo)}

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it 'creates a new ac_demo' do
      title = "Title 1"
      create_params = {ac_demo_id: ac_demo.id, ac_demo: {title: 'Title 1'} }
      expect(AcDemo.count).to eq(1)
      post :create, create_params
      expect(AcDemo.count).to eq(2)
      expect(AcDemo.last.title).to eq(title)
    end

    it 'renders new else' do
      create_params = {ac_demo_id: ac_demo.id, ac_demo: {title: nil} }
      expect(AcDemo.count).to eq(1)
      post :create, create_params
      expect(AcDemo.count).to eq(1)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: ac_demo.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, {id: ac_demo.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it 'updates a ac_demo' do
      ac_demo = AcDemo.create(title: 'Title 1')
      update_params = {id: ac_demo.id, ac_demo: {title: 'Title 1'}}
      put :update, update_params
      ac_demo = ac_demo.reload
      expect(ac_demo.title).to eq('Title 1')
    end

    it 'renders the edit template on error' do
      ac_demo = AcDemo.create(title: "Title 1")
      update_params = {id: ac_demo.id, ac_demo: {title: nil}}
      put :update, update_params
      expect(response).to render_template('edit')
    end
  end

  describe "DELETE #destroy" do
    it "destroys the ac_demo" do
      ac_demo = AcDemo.create(title: "Title 1")
      expect(AcDemo.count).to eq(1)
      delete :destroy, {id: ac_demo.id}
      expect(AcDemo.count).to eq(0)
    end
  end

end
