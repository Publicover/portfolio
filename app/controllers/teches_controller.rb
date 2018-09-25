class TechesController < ApplicationController
  before_action :set_app, only: [:index, :new, :create, :destroy]
  before_action :set_tech, only: [:show, :edit, :update, :destroy]

  def index
    @app = App.where(params[:app_id])
    @teches = @app.teches
  end

  def show
  end

  def new
    @tech = Tech.new
  end

  def edit
  end

  def create
    # @app = App.find(params[:app_id])
    @tech = Tech.new(teches_params)

    if @tech.save
      redirect_to @app
    else
      render 'edit'
    end
  end

  def update
  end

  def destroy
    @tech.destroy
    redirect_to @app
  end

  private

    def set_app
      @app = App.find(params[:app_id])
    end

    def set_tech
      @tech = Tech.find(params[:id])
    end

    def teches_params
      params.require(:tech).permit(:name, :app_id)
    end
end
