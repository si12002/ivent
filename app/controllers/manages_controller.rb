class ManagesController < ApplicationController

	def new
		@manage = Manage.new
	end

	def create
		@manage = Manage.new(manage_params)
		@manage.save
		redirect_to @manage
	end

	def show
	end

	private

		def manage_params
			params.require(:manage).permit(:user_id, :event_id)
		end
end
