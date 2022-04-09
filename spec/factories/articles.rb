FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "Sample Article Title #{n}" }
    content { "Sample content" }
    sequence(:slug) { |n| "sample-slug-#{n}" }
  end

end
