json.(user, :id, :email, :mobile_number, :first_name, :last_name, :name, :image)
json.token user.generate_jwt
