namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_forums
    make_topics
    make_posts
  end

  task initialize: :environment do
    make_forums
  end
end

def make_forums
  Forum.create(name: "论坛", genre: "root")
  forum = Forum.find(1)
  forum.children.create(name: "影音", genre: "group")
  forum.children.create(name: "情感", genre: "group")
  forum.children.create(name: "生活", genre: "group")
  forum.children.create(name: "休闲", genre: "group")
  forum.children.create(name: "游戏", genre: "group")
  forum.children.create(name: "体育", genre: "group")
  forum = Forum.find(2)
  forum.children.create(name: "电影", genre: "forum")
  forum.children.create(name: "音乐", genre: "forum")
  forum.children.create(name: "视频", genre: "forum")
  forum.children.create(name: "电视", genre: "forum")
  forum = Forum.find(3)
  forum.children.create(name: "交友", genre: "forum")
  forum.children.create(name: "单身", genre: "forum")
  forum.children.create(name: "诉说", genre: "forum")
  forum.children.create(name: "婚恋", genre: "forum")
  forum = Forum.find(4)
  forum.children.create(name: "美食", genre: "forum")
  forum.children.create(name: "购物", genre: "forum")
  forum.children.create(name: "美容", genre: "forum")
  forum.children.create(name: "健康", genre: "forum")
  forum.children.create(name: "汽车", genre: "forum")
  forum = Forum.find(5)
  forum.children.create(name: "时尚", genre: "forum")
  forum.children.create(name: "星座", genre: "forum")
  forum.children.create(name: "摄影", genre: "forum")
  forum.children.create(name: "宠物", genre: "forum")
  forum.children.create(name: "动漫", genre: "forum")
  forum.children.create(name: "旅游", genre: "forum")
  forum.children.create(name: "设计", genre: "forum")
  forum = Forum.find(6)
  forum.children.create(name: "足球", genre: "forum")
  forum.children.create(name: "篮球", genre: "forum")
  forum.children.create(name: "羽毛球", genre: "forum")
  forum.children.create(name: "乒乓球", genre: "forum")
  forum = Forum.find(7)
  forum.children.create(name: "网游", genre: "forum")
  forum.children.create(name: "单机", genre: "forum")
end

def make_topics
  Forum.forum.each do |forum|
    3.times do |n|
      Topic.create(
          forum_id: forum.id,
          subject: Faker::Lorem.sentence(1)
      )
    end
  end
end

def make_posts
  Topic.all.each do |topic|
    3.times do |n|
      Post.create(
          topic_id: topic.id,
          message: Faker::Lorem.sentence(200)
      )
    end
  end
end