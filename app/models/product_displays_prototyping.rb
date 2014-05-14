class ProductDisplaysPrototyping < ActiveRecord::Base
	self.inheritance_column = :_type_disabled
	self.table_name = "product_displays_prototyping"

	def self.to_display
		self.where(is_active: true).order("sort")
	end
end