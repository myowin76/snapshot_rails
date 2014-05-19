module Api
  module V1
    class BrandOwnersController < ApplicationController
      respond_to :json
			def index
				@brand_owners = Admin::BrandOwner.all
			end
		end
	end
end