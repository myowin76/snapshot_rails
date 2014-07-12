class Admin::AdminController < ApplicationController
	protect_from_forgery with: :exception
  before_action :authorize

  layout 'admin'
  def dashboard

  end
end
