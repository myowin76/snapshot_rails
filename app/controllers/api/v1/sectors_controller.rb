module Api
  module V1
    class SectorsController < ApplicationController
      respond_to :json
			def index
				@sectors = Admin::Sector.all
			end
		end
	end
end