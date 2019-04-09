json.extract! order_form, :id, :description, :quantity, :created_at, :updated_at
json.url order_form_url(order_form, format: :json)
