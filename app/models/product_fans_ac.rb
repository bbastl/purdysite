

class ProductFansAc < ActiveRecord::Base
	self.inheritance_column = :_type_disabled
	self.table_name = "product_fans_axial_ac"

	def self.to_display
		self.where(is_active: true).order("sort")
	end
end