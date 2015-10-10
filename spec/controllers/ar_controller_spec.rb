require 'rails_helper'

RSpec.describe ArController, type: :controller do
let(:ar1){FactoryGirl.create(:ar)}
let(:ar2){FactoryGirl.create(:ar)}
let(:hm1){FactoryGirl.create(:userhm)}
let(:hm2){FactoryGirl.create(:userhm)}
let(:vend1){FactoryGirl.create(:vendor)}
let(:vend2){FactoryGirl.create(:vendor)}
let(:cpl1){FactoryGirl.create(:couple)}



  describe "GET #has_many" do
    it "@doctors = Doctor.all" do
      expect(Doctor.count).to eq(0)
      user1 = hm1
      user2 = hm2
      doctors = create_list(:doctor, 1, name: 'Doctor Spock', userhm_id: user1.id)
      doctors = create_list(:doctor, 1, name: 'Doctor McCoy', userhm_id: user2.id)
      get :has_many
      expect(Doctor.count).to eq(2)
      expect(user1.doctors.first.name).to eq('Doctor Spock')
    end
  end

  describe "GET #has_many through" do
    it "@vendors = Vendor.all" do
      expect(Vendor.count).to eq(0)
      vendor1 = vend1
      vendor2 = vend2
      couple1 = cpl1
      vendors = create_list(:vendor, 1, name: 'Laid Back Vendor')
      vendors = create_list(:vendor, 1, name: 'Pushy Vendor')
      contract = FactoryGirl.create(:contract, vendor_id: vendor1.id, couple_id: couple1.id)
      contract2 = FactoryGirl.create(:contract, vendor_id: vendor2.id, couple_id: couple1.id)
      get :has_many_through
      expect(Vendor.count).to eq(4)
      expect(response).to have_http_status(:success)
      expect(Vendor.last.name).to eq('Pushy Vendor')
    end
  end

  describe "GET #has_one" do
    it "returns http success" do
      get :has_one
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
