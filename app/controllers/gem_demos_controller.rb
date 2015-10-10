class GemDemosController < ApplicationController
  before_action :demo, only: [:show, :edit, :update, :destroy]

  def form_populator
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    birth_date = Faker::Date.backward(14)
    address = Faker::Address.street_address
    city = Faker::Address.city
    state = Faker::Address.state
    zip = Faker::Address.zip
    render json: {first_name: first_name, last_name: last_name, birth_date: birth_date, address: address, city: city, state: state, zip: zip}
  end

  def index
    @gem_demo = GemDemo.all
  end

  def new
    @gem_demo = GemDemo.new
  end

  def create
    @gem_demo = GemDemo.new(gem_demo_params)
    if @gem_demo.save
      redirect_to gem_demos_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @gem_demo.update(gem_demo_params)
      redirect_to gem_demos_path
    else
      render 'edit'
    end
  end

  def destroy
    @gem_demo.destroy
    redirect_to gem_demos_path
  end

  private

  def gem_demo_params
    params.require(:gem_demo).permit(:first_name, :last_name, :birthdate, :address, :city, :state, :zip)
  end

  def demo
    @gem_demo = GemDemo.find(params[:id])
  end



end
