class ResumeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.resume_mailer.send_resume.subject
  #
  def send_resume(address)
    @greeting = "Hi"

    attachments['jim_resume.pdf'] = File.read('public/jim_resume.pdf')
    mail to: address, subject: 'My resume'
  end
end
