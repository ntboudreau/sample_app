# by using the symbol ':user', we get factory girl to simulate the user model.

Factory.define :user do |user|
  user.name                  "test testerson"
  user.email                 "test@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end