class ProductDisplaysIntgraph < ActiveRecord::Base
	self.table_name = "product_displays_intgraph"

	def self.to_display
		self.all.order("sort")
	end
end