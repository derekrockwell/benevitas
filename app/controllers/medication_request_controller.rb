class MedicationRequestController < ApplicationController
	before_filter :authenticate_user!

	def index
		@medication_request = 
		if current_user.medication_request.nil?
			current_user.create_medication_request
		else 
			current_user.medication_request
		end

		render :pending if @medication_request.published 

		while @medication_request.prescriptions.length < 2
			@medication_request.prescriptions.build
		end

		while @medication_request.otc.length < 2
			@medication_request.otc.build
		end		

	end

	def confirm
		@medication_request = current_user.medication_request
		@medication_request.attributes = params[:medication_request]
		@medication_request.save
		respond_to do |format|
			format.html
			format.js
		end		

	end

	def update
		current_user.medication_request.published = true
		current_user.medication_request.save
		redirect_to medication_request_index_path
	end
end