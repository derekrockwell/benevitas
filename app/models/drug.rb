class Drug < ActiveRecord::Base
	scope :prescribed, where(:type => "prescribed")
	scope :otc, where(:type => "otc")

	has_many :drug_interactions
	has_many :interactions, :through => :drug_interactions
	attr_accessible :medication_request_id, :name, :drug_id, :medication_type
end
