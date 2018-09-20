class ResumesController < ApplicationController

  def write_email
  end

  def send_email
    ResumeMailer.send_resume(params[:address]).deliver_now
  end
end
