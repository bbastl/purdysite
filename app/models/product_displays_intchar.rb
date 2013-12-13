class ProductDisplaysIntchar < ActiveRecord::Base
	self.table_name = "product_displays_intchar"

	def self.to_display
		self.all.order("sort")
	end
end
