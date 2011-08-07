Factory.sequence(:somestring) { |n| "somerandomstring_#{n}"}
Factory.sequence(:sometext) { |n| "somerandomtext_#{n}\nsometext_#{n+1}\nsome.1234124"}
Factory.sequence(:email) { |n| "some#{n}email@example.com" }
