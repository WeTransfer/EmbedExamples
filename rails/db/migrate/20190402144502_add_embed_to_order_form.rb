class AddEmbedToOrderForm < ActiveRecord::Migration[5.2]
  def change
    add_column :order_forms, :uploaded_material, :string, nil: false
  end
end
