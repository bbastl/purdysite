class ProductDisplaysIntgraph < ActiveRecord::Base
	self.inheritance_column = :_type_disabled
	self.table_name = "product_displays_intgraph"

	def self.to_display
		self.all.order("sort")
	end
end