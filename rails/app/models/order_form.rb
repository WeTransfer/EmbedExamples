class OrderForm < ApplicationRecord
  validates :description, :quantity, :uploaded_material, presence: true
end
