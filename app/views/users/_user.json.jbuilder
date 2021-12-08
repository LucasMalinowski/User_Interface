json.extract! user, :id, :person_name, :street, :city, :state, :postal_code, :person_image, :created_at, :updated_at
json.url user_url(user, format: :json)
