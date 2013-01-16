class MedicationRequest < ActiveRecord::Base
	has_many :drugs
	
	has_many :prescriptions,
	:class_name => "Drug", :source => :drugs, 
	:conditions => ['drugs.medication_type = ?', "prescribed"]
	
	has_many :otc, 
	:class_name => "Drug", :source => :drugs, 
	:conditions => ['drugs.medication_type = ?', "otc"]	
	
	belongs_to :user
	accepts_nested_attributes_for :drugs, allow_destroy: true
	accepts_nested_attributes_for :prescriptions, allow_destroy: true
	accepts_nested_attributes_for :otc, allow_destroy: true
	attr_accessible :published, :response_summary, :user_id, 
	:drugs_attributes, :prescriptions_attributes, :otc_attributes

end
