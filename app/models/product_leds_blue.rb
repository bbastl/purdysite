class ProductLedsBlue < ActiveRecord::Base
  self.table_name = "product_led_blue_white"

  def self.to_display
    self.all.order(:item_type)
  end
end