json.(user, :id, :email, :mobile_number, :first_name, :last_name, :name)
json.token user.generate_jwt
