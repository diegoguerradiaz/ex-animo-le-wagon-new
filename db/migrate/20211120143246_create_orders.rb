class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :start_order_date
      t.datetime :end_order_date

      t.timestamps
    end
  end
end
