class DrugInteraction < ActiveRecord::Base
	belongs_to :drug
	belongs_to :interaction, :class_name => 'Drug'

	attr_accessible :drug_id, :interacts_with_id, :interaction_id, :summary
end
