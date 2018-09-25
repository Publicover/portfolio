class ClientsController < ApplicationController
  before_action :logged_in?
  before_action :set_job, only: [:index, :new, :edit, :destroy, :create]
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = @job.clients
  end

  def show
  end

  def new
    @client = Client.new
  end

  def edit
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to @job
    else
      render 'new'
    end
  end

  def update

  end

  def destroy
    @client.destroy
    redirect_to @job
  end

  private

    def set_job
      @job = Job.find(params[:job_id])
    end

    def set_client
      @client = Client.find(params[:id])
    end

    def client_params
      params.require(:client).permit(:name, :image_url, :job_id)
    end
end
