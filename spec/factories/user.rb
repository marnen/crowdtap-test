Factory.define :user do |f|
  f.email { Faker::Internet.email }
end
