# frozen_string_literal: true

FactoryBot.define do
  factory :admin, class: User do
    sequence(:email) { |n| Faker::Internet.safe_email(name: "admin_user_#{n}") }
    password { 'test1234' }
    role { 'Admin' }
  end

  factory :user, class: User do
    sequence(:email) { |n| Faker::Internet.safe_email(name: "user_#{n}") }
    password { 'test1234' }
  end
end
