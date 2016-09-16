FactoryGirl.define do
  factory :user do
    email 'meaghan@gmail.com'
    password 'password'
  end

  factory(:course) do
    name('English for hiking')
    description('If you are going hiking in the US you need this vocaulary!')
    photo('http://travel-holidays.money-socrates.com/wp-content/uploads/2014/07/Hiking-Mllorca-Majorca.jpg')
    level('intermediate')
    age('adult')
    skill('speaking')
  end
end
