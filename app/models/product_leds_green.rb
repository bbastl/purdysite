class ProductLedsGreen < ActiveRecord::Base
	self.table_name = "product_leds_green"

	def self.to_display
		self.all.order("sort").order(:item_type)
	end
end