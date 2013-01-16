class MedicationRequestController < ApplicationController
	before_filter :authenticate_user!

	def index
		@medication_request = 
		if current_user.medication_request.nil?
			current_user.create_medication_request
		else 
			current_user.medication_request
		end

	end

	def show
		@medication = current_user.medication_request
	end

	def update
		current_user.medication_request.attributes = params[:medication_request]
		current_user.medication_request.save
		redirect_to medication_request_index_path
	end
end