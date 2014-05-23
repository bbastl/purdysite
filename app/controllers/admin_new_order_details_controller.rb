class AdminNewOrderDetailsController < ApplicationController

	http_basic_authenticate_with name: "admin", password: "display7"

	def order_index
 		# where product_name ilike '% search_str %' or company ilike '% search_str %' and status = status and created_at > <
 		if params[:chkval]
 			query = ""
 			if srch = params[:search]
 				query += "(product_name ilike '%#{srch}%' or company ilike '%#{srch}%' or lastname ilike '%#{srch}%')"
 			end

 			unless params[:status].empty?
 				query += " and status = '#{params[:status]}'"
 			end

 			unless params[:sDate].empty?
 				query += " and created_at >= '#{params[:sDate]}' and created_at < '#{params[:eDate]}' "
 			end

 			@od = NewOrderDetail.where(query).order('created_at desc').limit(500)
 		else
 			@od = NewOrderDetail.order('created_at desc').limit(50)
 		end
 	end

 	def order_edit
 		current_order_id = params[:id]

 		@order_item = NewOrderDetail.where(:id => current_order_id).first
 	end

 	def order_update
 		
 		order = NewOrderDetail.where(:id => params[:id]).first

 		if order
 			Rails.logger.debug order.inspect
 			order.status = params[:hStatus] unless params[:hStatus].empty?
 			order.project = params[:hProject] unless params["hProject"].empty?
 			order.decision_maker = params[:mmaker] unless params[:mmaker].empty?
 			order.decision_title = params[:ttitle] unless params[:ttitle].empty?
 			order.target_price = params[:Target_Price] unless params[:Target_Price].empty?
 			order.buying_criteria = params[:Buying_Criteria] unless params[:Buying_Criteria].empty?
 			order.how_did = params[:How_Did] unless params[:How_Did].empty?
 			order.competition1 = params[:Competition1] unless params[:Competition1].empty?
 			order.competition2 = params[:Competition2] unless params[:Competition2].empty?
 			order.competition3 = params[:Competition3] unless params[:Competition3].empty?
 			order.competition4 = params[:Competition4] unless params[:Competition4].empty?
 			#order.prototype_date = params[:Pr_Date] unless params[:Pr_Date].empty?
 			#order.production_start = params[:P_Date] unless params[:P_Date].empty?
 			order.eau = params[:tEau] unless params["tEau"].empty?

 			# SHIPING INFO
 			order.auth_status = params[:hAuthStatus] unless params[:hAuthStatus].empty?
 			order.auth_by = params[:fauthby] unless params[:fauthby].empty?
 			order.shippingpriority = params[:sPriority] unless params[:sPriority].empty?
 			order.shippingnumber = params[:hShipping] unless params[:hShipping].empty?
 			order.shippingmethod = params[:sMethod] unless params[:sMethod].empty?
 			order.shippingcarrier = params[:sCarrier] unless params[:sCarrier].empty?
 			order.save

 			#Handle create new note
 			note = params[:hNote] unless params[:hNote].empty?
 			note = params[:hNote2] unless params[:hNote2].empty?

 			if note
 				order.new_notes.create(detail: note, role: "admin")
 			end
 		end

 		redirect_to "/admin_new_order_details/order_edit?id=#{params[:id]}" 
 	end
end