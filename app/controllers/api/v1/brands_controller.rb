module Api
  module V1
    class BrandsController < ApplicationController
      respond_to :json
			def index
				@brands = Admin::Brand.all
			end
		end
	end
end