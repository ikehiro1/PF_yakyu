class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|

      t.string :order_number1
      t.string :order_number2
      t.string :order_number3
      t.string :order_number4
      t.string :order_number5
      t.string :order_number6
      t.string :order_number7
      t.string :order_number8
      t.string :order_number9
      
      t.timestamps
    end
  end
end
