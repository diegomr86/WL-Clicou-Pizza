class UserMailer < ActionMailer::Base
  default from: "Clicou Pizza <noreply@clicoupizza.com}>"
  
  def contact_us_form(contact_us, site)
    @contact_us = contact_us
    mail(to: 'diegomr86@gmail.com', subject: "Mensagem do site: #{@contact_us.name}")
  end

end
