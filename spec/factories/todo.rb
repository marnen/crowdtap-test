Factory.define :todo do |f|
  f.title { Faker::Lorem.sentence }
  f.description { Faker::Lorem.paragraph }
  f.due_date { rand(100).days.from_now }
  f.user
end
