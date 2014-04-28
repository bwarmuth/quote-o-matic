# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :proposal do
    user_id 1
    reseller_id 1
    company_id 1
    opportunity_id 1
    status "MyString"
    approved_date "2014-04-25 14:29:07"
    declined_date "2014-04-25 14:29:07"
    sent_date "2014-04-25 14:29:07"
    completed_date "2014-04-25 14:29:07"
  end
end
