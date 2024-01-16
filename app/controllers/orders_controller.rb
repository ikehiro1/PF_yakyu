class OrdersController < ApplicationController
    
    def index
    end

    def update
      if @order.update(order_params)
        redirect_to orders_path, notice: 'オーダーが更新されました。'
      else
        render :index
      end
    end

    private
    def set_order
        @order = Order.find_or_create_by(order_number1)
    end
    def order_params
        params.require(:order).permit(:order_number1,:order_number2,:order_number3,:order_number4,:order_number5,:order_number6,:order_number7,:order_number8,:order_number9)
    end
end
 