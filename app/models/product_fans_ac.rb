

class ProductFansAc < ActiveRecord::Base
	self.table_name = "product_fans_axial_ac"

	def self.to_display
		self.all.order("sort")
	end
end