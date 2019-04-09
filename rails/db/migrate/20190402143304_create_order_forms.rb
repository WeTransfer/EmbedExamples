class CreateOrderForms < ActiveRecord::Migration[5.2]
  def change
    create_table :order_forms do |t|
      t.string :description, nil: false
      t.integer :quantity, nil: false

      t.timestamps
    end
  end
end
