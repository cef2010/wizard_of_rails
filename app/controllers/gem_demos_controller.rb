class GemDemosController < ApplicationController
  before_action :demo, only: [:show, :edit, :update, :destroy]
  
  def index
    @gem_demo = GemDemo.all
  end

  def new
    @gem_demo = GemDemo.new
  end

  def create
    @gem_demo = GemDemo.new(gem_demo_params)
    if @gem_demo.save
      redirect_to gem_demo_path
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
      redirect_to gem_demo_path
    else
      render 'edit'
    end
  end

  def destroy
    @gem_demo.destroy method: :delete
    redirect_to gem_demo_path
  end

  private

  def gem_demo_params
    params.require(:gem_demo).permit(:first_name, :last_name, :birthdate, :address, :city, :state, :zip)
  end

  def demo
    @gem_demo = GemDemo.find(params[:id])
  end

end
