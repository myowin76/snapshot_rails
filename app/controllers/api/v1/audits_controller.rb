module Api
  module V1
    class AuditsController < ApplicationController
      respond_to :json
			def index
				@audits = Admin::Audit.all
			end
		end
	end
end