json.array!(@laps) do |lap|
  json.extract! lap, :id, :brand, :model, :time
  json.url lap_url(lap, format: :json)
end
