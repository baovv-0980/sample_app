class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        if params[:session][:remember_me] == Settings.remember
          remember(user)
        else
          forget(user)
        end
        redirect_back_or user
      else
        message = t ".flash_active"
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = t ".flash_login"
      render :new
    end
 end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
