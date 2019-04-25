json.extract! api_hello, :id, :name, :created_at, :updated_at
json.url api_hello_url(api_hello, format: :json)
