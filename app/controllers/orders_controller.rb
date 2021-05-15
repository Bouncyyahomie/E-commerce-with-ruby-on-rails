class OrdersController < ApplicationController
    def new
        @order = Order.new
    end

    def create
        @order = Order.create(order_params)
        redirect_to homes_path
    end

    private
        def order_params
            params.require(:order).permit(:product_id, :address, :name)
        end
end