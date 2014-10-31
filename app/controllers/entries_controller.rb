class EntriesController < ApplicationController
	def index
		#@user = User.all
		@entry = Entry.all
	end

	def new
		@entry = Entry.new
	end

	def create
		@entry = Entry.new(entry_params)
		@entry.save
		redirect_to @entry
	end

	def show
	end

	private

		def entry_params
			params.require(:entry).permit(:user_id, :event_id)
		end
end
