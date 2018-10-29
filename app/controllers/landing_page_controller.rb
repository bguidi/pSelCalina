class LandingPageController < ApplicationController
  def index
        
  end

  def create  
    @json = Hash.new

    @json[:name] = params[:name]
    @json[:subject] = params[:subject]
    @json[:message] = params[:message]

    FormMailer.message_mail(@json[:subject], @json[:name], @json[:message]).deliver

    redirect_to root_path
  
  end

  def mail_sent

  end

  def send_mail_params
    params.require(@json).permit(:name, :subject, :message)
  end
end

