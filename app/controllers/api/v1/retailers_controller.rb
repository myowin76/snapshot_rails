module Api
  module V1
    class RetailersController < ApplicationController
      respond_to :json
			def index
				@retailers = Admin::Retailer.all
			end
		end
	end
end