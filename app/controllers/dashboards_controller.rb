class DashboardsController < ApplicationController
  def index
    @apps = App.all
    @jobs = Job.all
  end
end
