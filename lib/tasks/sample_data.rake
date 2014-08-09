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
  Post.create(title: "下面两个公式看起来有些区别。。。")
end