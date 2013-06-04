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

  factory :review do
    user "MyString"
    comment "MyText"
  end
end
