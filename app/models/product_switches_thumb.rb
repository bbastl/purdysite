class ProductSwitchesThumb < ActiveRecord::Base
	self.inheritance_column = :_type_disabled
	self.table_name = "product_switches_thumb"

	def self.to_display
		self.all.order("sort").order(:item_type)
	end
end