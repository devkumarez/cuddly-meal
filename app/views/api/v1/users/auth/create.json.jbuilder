json.user do |json|
  json.partial! 'api/v1/users/sessions/user', user: @current_user
end