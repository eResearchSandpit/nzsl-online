FactoryGirl.define do
  factory :page_part do
    title { Faker::Book.title }
    translation_path { Faker::Lorem.word }
    page(factory: :page)
  end
end
