class ProductLedsBlue < ActiveRecord::Base
  self.inheritance_column = :_type_disabled
  self.table_name = "product_led_blue_white"

  def self.to_display
    self.where(is_active: true).order(:item_type)
  end
end