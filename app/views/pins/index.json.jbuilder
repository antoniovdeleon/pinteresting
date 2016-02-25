json.array!(@pins) do |pin|
  json.extract! pin, :id, :descriptioin
  json.url pin_url(pin, format: :json)
end
