class AppsController < ApplicationController
  before_action :logged_in?, except: [:index, :show]
  before_action :set_app, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @app = App.new
  end

  def edit
  end

  def create
    @app = App.new(app_params)

    if @app.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @app.update(app_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @app.destroy
    redirect_to root_path
  end

  private

    def set_app
      @app = App.find(params[:id])
    end

    def app_params
      params.require(:app).permit(:name, :url, :description, :img_url, :short_description, :time_period, :additional_notes)
    end
end
