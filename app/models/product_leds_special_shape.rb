class ProductLedsSpecialShape < ActiveRecord::Base
	self.inheritance_column = :_type_disabled
	self.table_name = "product_leds_special_shape"

	def self.to_display
		self.where(is_active: true).order(:item_type)
	end
end