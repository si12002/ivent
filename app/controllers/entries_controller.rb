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
		#@entry.save
		current_user.entry!(@entry.event)
		redirect_to @entry.event
	end

	def show
	end

	def destroy
		@entry = Entry.find(params[:id])
		@event = @entry.event
		#@entry.destroy
		current_user.unentry!(@event)
		redirect_to @event
	end

	private

		def entry_params
			params.require(:entry).permit(:user_id, :event_id)
		end
end
