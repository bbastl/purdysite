class AddColumnToNewOrderDetail < ActiveRecord::Migration
  def change
  	add_column :new_order_details, :cardholder, :string
  	add_column	:new_order_details, :ccnumber, :string
  	add_column :new_order_details, :cctype, :string
  	add_column	:new_order_details, :expirymonth, :string
  	add_column	:new_order_details, :expiryyear, :string
  	add_column	:new_order_details, :status, :string
  	add_column :new_order_details, :shippingnumber, :string
  	add_column :new_order_details, :shippingmethod, :string
  	add_column :new_order_details, :shippingpriority, :string
  	add_column :new_order_details, :shippingcarrier, :string
  	add_column :new_order_details, :auth_status, :string
  	add_column :new_order_details, :auth_by, :string
  	add_column :new_order_details, :auth_date, :string
  	add_column :new_order_details, :auth_time, :string
  	add_column :new_order_details, :note, :string
  	add_column :new_order_details, :sn_flag, :string
  	add_column :new_order_details, :product, :string
  	add_column :new_order_details, :eau, :string
  	add_column	:new_order_details, :production_start, :string
  	add_column :new_order_details, :decision_maker, :string
  	add_column :new_order_details, :decision_title, :string
  	add_column :new_order_details, :prototype_date, :string
  	add_column :new_order_details, :buying_criteria, :string
  	add_column :new_order_details, :target_price, :string
  	add_column :new_order_details, :how_did, :string
  	add_column :new_order_details, :competition1, :string
  	add_column :new_order_details, :competition2, :string
  	add_column :new_order_details,	:competition3, :string
  	add_column :new_order_details, :competition4, :string
  	add_column :new_order_details, :product_line, :string
  	add_column :new_order_details, :orderprice, :string
  	add_column :new_order_details, :project, :string

  end
end
# sn_flag
		# fld_date
		# fld_time
		# project
		# eau
		# production_start
		# decision_maker
		# decision_title
		# prototype_date
		# buying_criteria
		# target_price
		# how_did
		# competition1
		# competition2
		# competition3
		# competition4
		# product_line

# orderid 
		# product_id => "hProd_id"
		# product_name => "hProd_name"
		# orderprice
		# firstname => "txtFName"
		# lastname => "txtLName"
		# company => "company"
		# address1 => "txtAdd1"
		# address2 => "txtAdd2"
		# city => "txtCity"
		# state => "txtState"
		# country => "txtCountry"
		# zip => "txtZip"
		# phone => "txtPhone"
		# fax => "txtFax"
		# email => "txtEmail"
		# cardholder
		# ccnumber
		# cctype
		# expirymonth
		# expiryyear
		# status
		# shippingnumber
		# shippingmethod
		# shippingpriority
		# shippingcarrier
		# auth_status
		# auth_by
		# auth_date
		# auth_time
		# note
		