FactoryBot.define do
  factory :post do
    title {"aaa"}
    content {"hello!"}
    image {"hoge.png"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end
end