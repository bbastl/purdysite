class ProductFansDc < ActiveRecord::Base
	self.inheritance_column = :_type_disabled
	self.table_name = "product_fans_axial_dc"

	def self.to_display
		self.all.order("sort")
	end
end