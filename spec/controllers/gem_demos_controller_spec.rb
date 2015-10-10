require 'rails_helper'

RSpec.describe GemDemosController, type: :controller do
let(:gem_demo){FactoryGirl.create(:gem_demo)}

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
    it 'creates a new gem_demo' do
      first_name = "First Name 1"  #needed?
      create_params = {gem_demo_id: gem_demo.id, gem_demo: {first_name: 'First Name 1', last_name: 'Last Name'} }
      expect(GemDemo.count).to eq(1)
      post :create, create_params
      expect(GemDemo.count).to eq(2)
      expect(GemDemo.last.first_name).to eq(first_name)
    end

    it 'renders new else' do
      create_params = {gem_demo_id: gem_demo.id, gem_demo: {first_name: '', last_name: 'Last Name'} }
      expect(GemDemo.count).to eq(1)
      post :create, create_params
      expect(GemDemo.count).to eq(1)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: gem_demo.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, {id: gem_demo.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it 'updates a gem_demo' do
      gem_demo = GemDemo.create(first_name: 'First Name 1')
      update_params = {id: gem_demo.id, gem_demo: {first_name: 'First Name 1'}}
      put :update, update_params
      gem_demo = gem_demo.reload #need to reload with updated attr to check...
      expect(gem_demo.first_name).to eq('First Name 1')
    end

    it 'renders the edit template on error' do
      gem_demo = GemDemo.create(first_name: "First Name 1")
      update_params = {id: gem_demo.id, gem_demo: {first_name: nil}}
      put :update, update_params
      expect(response).to render_template('edit')
    end
  end

  describe "DELETE #destroy" do
    it "destroys the gem_demo" do
      gem_demo = GemDemo.create(first_name: "First Name 1")
      expect(GemDemo.count).to eq(1)
      delete :destroy, {id: gem_demo.id}
      expect(GemDemo.count).to eq(0)
    end
  end

end
