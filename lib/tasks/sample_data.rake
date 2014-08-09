namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_posts
  end

  task initialize: :environment do
    make_posts
  end
end

def make_posts
  100.times do |n|
    Post.create(title: Faker::Lorem.sentence(1))
  end
end