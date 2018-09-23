class JobsController < ApplicationController
  before_action :logged_in?, except: [:index, :show]
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @job = Job.new
  end

  def edit
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @job.update(job_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @job.destroy
    redirect_to root_path
  end

  private

    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:name, :url, :description, :img_url, :short_description, :time_period, :additional_notes)
    end
end
