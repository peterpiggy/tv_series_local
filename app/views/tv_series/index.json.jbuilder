json.array!(@tv_series) do |tv_series|
  json.extract! tv_series, :id
  json.url tv_series_url(tv_series, format: :json)
end
