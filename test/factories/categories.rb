FactoryGirl.define do
  factory :product do
    name "MyString"
    description "MyText"
    price_in_cents 1
  end
  factory :user do
    name "MyString"
    email "MyString"
    password "MyPassword"
    password_confirmation "MyPassword"
  end
end
