class ContactUsController < ApplicationController
  def index
    @contact_us = ContactUs.new
    respond_to do |format|
      format.html
    end
  end

  def create
    
    @contact_us = ContactUs.new(params[:contact_us])

    respond_to do |format|
      if @contact_us.valid? 
        UserMailer.contact_us_form(@contact_us, @site.info).deliver
        format.html do
          redirect_to contact_us_path, notice: 'Sua mensagem foi enviada com sucesso! Em breve entraremos em contato.'
        end
      else
        format.html { render action: "index" }
      end 
    end
  end
  
end