json.array!(@trips) do |trip|
  json.extract! trip, :id, :trip_time, :user_id
  json.url trip_url(trip, format: :json)
end
