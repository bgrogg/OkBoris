json.extract! user, :id, :username, :email, :location, :looking_for
json.image_url asset_path(user.image_file_name)
