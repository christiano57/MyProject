require_relative("lib/blog.rb")
require_relative("lib/post.rb")
require_relative("lib/sponsored_post.rb")


post1 = Post.new("ironhack day 1", "Jan 10", "My first day at ironhack was pretty great.")
post2 = Post.new("ironhack day 2", "Jan 11", "Second day was pretty hard.")
post3 = Post.new("ironhack day 3", "Jan 12", "IDK if I'm going to make it.")
post4 = Post.new("ironhack day 4", "Jan 13", "This was just another day")
post5 = Post.new("ironhack day 5", "Jan 14", "This was just another day")
post6 = Post.new("ironhack day 6", "Jan 15", "This was just another day")
post7 = Post.new("ironhack day 7", "Jan 16", "This was just another day")
post8 = Post.new("ironhack day 8", "Jan 17", "This was just another day")
post9 = Post.new("ironhack day 9", "Jan 18", "This was just another day")
christians_blog = Blog.new
christians_blog.push_post(post1)
christians_blog.push_post(post2)
christians_blog.push_post(post3)

christians_blog.publish_front_page


