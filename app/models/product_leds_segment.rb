class ProductLedsSegment < ActiveRecord::Base
	self.table_name = "product_leds_green_segment"

	def self.to_display
		self.all.order(:item_type, :led, :sort)
	end
end