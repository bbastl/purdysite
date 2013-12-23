class ProductLedsSpecialShape < ActiveRecord::Base
	self.table_name = "product_leds_special_shape"

	def self.to_display
		self.all.order("sort").order(:item_type)
	end
end