class OrderController < ApplicationController

	def index
		prod_sel = params[:prod_sel]
		prod_type = params[:prod_type]

		class_to_load = "#{prod_type}".camelize.constantize
		@product_data = class_to_load.where(:product_id => prod_sel).first
	end

	def process_order
		Rails.logger.debug params
		 NewOrderDetail.create( product_id: params[:hProd_id],
							product_name: params[:hProd_name],
							firstname: params[:txtFName],
							lastname: params[:txtLName],
							company: params[:company],
							address1: params[:txtAdd1],
							address2: params[:txtAdd2],
							city: params[:txtCity],
							state: params[:txtState],
							country: params[:txtCountry],
							zip: params[:txtZip],
							phone: params[:txtPhone],
							fax: params[:txtFax],
							email: params[:email]
						)
		render :inline => "test submit"

# 		{"txtFName"=>"Shayne", "txtLName"=>"DeFazio", "company"=>"-", "txtAdd1"=>"1171 Holmes Ave", "txtAdd2"=>"1171 Holmes Ave", 
#    "txtCity"=>"Campbell", "txtState"=>"California", "txtCountry"=>"usa", "txtZip"=>"95008", "txtPhone"=>"4083942959",
# "txtFax"=>"77777777777", "txtEmail"=>"test@test.com", "cmdservice"=>"", "txtshipping"=>"", "cmdtype"=>"", "txtHolder"=>"", 
# "txtCCNumber"=>"", "CCType"=>"Master", "ExpiryMonth"=>"0", "ExpiryYear"=>"2012", "hMonth"=>"", "servertype"=>"New", 
# "hTotal"=>"57", "hProd_id"=>"41", "hProd_name"=>"ANDpSi020TD-LED", "hProd_price"=>"47", "hprodline"=>""}

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
	end
end