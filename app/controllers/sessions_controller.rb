class SessionsController < ApplicationController
	

	def new
    
	end

  def create

    user = Admin::User.find_by_username_or_email(params[:login_input])
    
    if user && user.authenticate(params[:password])
      
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end

      # add login details to login history table

      # if (user.role.name == 'Administrator')
      # if (user.roles.map(&:name).include?('Administrator'))
      if user.is_admin?
        redirect_to admin_dashboard_path, :notice => "Logged in!"

      # elsif (user.roles.map(&:name).include?('Customer Service'))
      elsif user.is_customer_service?
        redirect_to csdesk_dashboard_path, :notice => "Logged in!"

      else
        if user.active?
          redirect_to root_path
        else
          session[:temp_pwd] = params[:password]
          redirect_to security_check_path
        end
          # redirect_to :controller => 'pages', :action => 'index', :notice => "Logged in!"
      end
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end

  end

  def destroy
	  cookies.delete(:auth_token)
    redirect_to login_path, :notice => "Logged out!"
	end

end
