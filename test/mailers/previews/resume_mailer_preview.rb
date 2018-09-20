# Preview all emails at http://localhost:3000/rails/mailers/resume_mailer
class ResumeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/resume_mailer/request_resume
  def request_resume
    ResumeMailer.request_resume
  end

  # Preview this email at http://localhost:3000/rails/mailers/resume_mailer/send_resume
  def send_resume
    ResumeMailer.send_resume
  end

end
