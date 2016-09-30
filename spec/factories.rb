FactoryGirl.define do
  factory :skill do
    name "MyString"
  end
  factory(:course) do
    name('English for hiking')
    description('If you are going hiking in the US you need this vocaulary!')
    level('intermediate')
    age('adult')
    skill('speaking')
  end

  factory :user do
    email 'meaghan@gmail.com'
    password 'password'
    admin true
  end
end
