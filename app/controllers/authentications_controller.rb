class AuthenticationsController < ApplicationController
  def callback
    auth = request.env['omniauth.auth']

    engineer = Engineer.find_by(provider: auth['provider'], eid: auth['uid']) || Engineer.create_with_omniauth(auth)
    session[:engineer_id] = engineer.id
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
