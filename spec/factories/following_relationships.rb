# frozen_string_literal: true

FactoryBot.define do
  factory :following_relationship do
    follower { nil }
    followed_user { nil }
  end
end
