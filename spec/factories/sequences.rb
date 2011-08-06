Factory.sequence(:somestring) { |n| "somerandomstring_#{n}"}
Factory.sequence(:email) { |n| "some#{n}email@example.com" }
