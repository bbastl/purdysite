class ProductLedsOrangeAmber < ActiveRecord::Base
	self.inheritance_column = :_type_disabled
	self.table_name = "product_leds_orange_amber"

	def self.to_display
		self.all.order("sort").order(:item_type)
	end
end