class Add < ApplicationRecord
	belongs_to :adboard
	belongs_to :ads_category
	belongs_to :ads_size

	scope :active_adds, -> {where(active: true)}
	scope :valid_adds, -> {where(active: true).where.not(start_add: nil)}

	before_create :set_charge

	def set_charge
		self.charge = self.ads_category.ads_cost
	end
end
