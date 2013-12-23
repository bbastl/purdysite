class ProductFansAccessory < ActiveRecord::Base
	self.table_name = "product_fans_accessories"

	def self.to_display
		self.all.order("sort")
	end
end