require 'faker'
require 'database_cleaner/active_record'
include Faker

puts 'Clearing old data...'

DatabaseCleaner.strategy = :truncation, {:only => %w[links]}
DatabaseCleaner.clean

puts 'Adding fake records...'

20.times do
  Link.create(
    link_title: Faker::Hipster.sentence,
    link_description: Faker::Hipster.paragraph(sentence_count: 4),
    link_url: Faker::Internet.domain_name,
    user_id: 1
  )
end

puts 'Done.'