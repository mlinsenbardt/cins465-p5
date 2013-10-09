json.array!(@entries) do |entry|
  json.extract! entry, :first_name, :last_name, :email, :zip_code, :favorite_color
  json.url entry_url(entry, format: :json)
end
