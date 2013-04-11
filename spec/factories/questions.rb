require 'faker'

FactoryGirl.define do
  factory :question do |f|
    content "Here's some real content in question form?"
    survey_id 1
  end
end
