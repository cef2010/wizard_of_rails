class AcDemosController < ApplicationController
  before_action :demo, only: [:show, :edit, :update, :destroy]
  def home
    @ac_demos = AcDemo.all
  end

  def index
    @ac_demos = AcDemo.all
  end

  def new
    @ac_demo = AcDemo.new
  end

  def create
    @ac_demo = AcDemo.new(ac_demo_params)
    if @ac_demo.save
      redirect_to ac_demos_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @ac_demo.update(ac_demo_params)
      redirect_to ac_demos_path
    else
      render 'edit'
    end
  end

  def destroy
    @ac_demo.destroy
    redirect_to ac_demos_path
  end

  private

    def ac_demo_params
      params.require(:ac_demo).permit(:title, :text, :author)
    end

    def demo
      @ac_demo = AcDemo.find(params[:id])
    end

end
