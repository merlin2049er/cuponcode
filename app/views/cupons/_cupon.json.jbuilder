json.extract! cupon, :id, :code, :comment, :valid, :start, :end, :value, :created_at, :updated_at
json.url cupon_url(cupon, format: :json)
