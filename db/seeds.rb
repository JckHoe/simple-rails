User.find_or_create_by!(email: 'default@example.com') do |user|
  user.password = 'password123'
  user.password_confirmation = 'password123'
end
