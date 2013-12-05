class ProductDisplaysSegment < ActiveRecord::Base
	self.table_name = "product_displays_segment"

	def self.to_display
		self.all.order("sort")
	end
end