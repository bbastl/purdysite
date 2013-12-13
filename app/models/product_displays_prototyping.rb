class ProductDisplaysPrototyping < ActiveRecord::Base
	self.table_name = "product_displays_prototyping"

	def self.to_display
		self.all.order("sort")
	end
end