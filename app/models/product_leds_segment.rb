class ProductLedsSegment < ActiveRecord::Base
	self.table_name = "product_leds_green_segment"

	def self.to_display
		self.all.order("sort").order(:led).order(:item_type)
	end
end