module Api
  module V1
    class StoresController < ApplicationController
      respond_to :json
			def index
				@stores = Store.all
			end
		end
	end
end