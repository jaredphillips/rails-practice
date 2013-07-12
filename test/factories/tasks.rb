# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
  	title "Dishes"
  	description "Ain't nobody got time for that"
  	due_date "2014-01-01 00:00:00 -0600"
  	due_time "2014-01-01 00:00:00 -0600"
  	complete true
  	user_id 1
  end
end
