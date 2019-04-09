class OrderForm < ApplicationRecord
  validates :description, :quantity, presence: true
end
