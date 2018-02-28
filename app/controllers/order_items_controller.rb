class OrderItemsController < ApplicationController
	def create
	    @order = current_order
	    @order.user = current_user
	    @order_item = @order.order_items.new(order_item_params)

	    respond_to do |format|
	    	# Check if order item exists in (order.id, plan.id, meal_type.id)

	    	# if !@order.order_items.exists?(menu_id: params[:order_item][:menu_id], order_id: @order.id)
	    	if !@order.order_items.exists?(menu_id: params[:order_item][:menu_id], order_id: @order.id, plan_id: params[:order_item][:plan_id], plan_meal_id: params[:order_item][:plan_meal_id])
	    		@order.save
		    else
		    	menu_item = @order.order_items.where(menu_id: params[:order_item][:menu_id], order_id: @order.id).first
		    	menu_item.quantity += 1
		    	menu_item.save
		    end

		    if @order_item.errors.any?
		    	@order_item.errors.full_messages.each do |msg|
		    		puts msg
		    	end
		    end
		    @order = current_order
	      	format.js
	    end	
	end

	def update
	    @order = current_order
	    @order_item = @order.order_items.find(params[:id])

	    respond_to do |format|
	      if @order_item.update_attributes(order_item_params)
	        format.html { redirect_to @order_item, notice: 'order was successfully created.' }
	      else
	        format.html { render :new }
	        format.json { render json: @order_item.errors, status: :unprocessable_entity }
	      end
	      format.js
	     end
	end

	def destroy
	    @order = current_order
	    @order_item = @order.order_items.find(params[:id])
	    
	    respond_to do |format|
	    	@order_item.destroy
	    	format.js
	    end
	    @current_order = current_order
	end

	private
	  def order_item_params
	    params.require(:order_item).permit(:quantity, :menu_id, :plan_id, :plan_meal_id)
	  end

	  def order_params
	    params.require(:order).permit(:user_id)
	  end

end
