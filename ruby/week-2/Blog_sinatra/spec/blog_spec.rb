require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

describe Blog do
	before :each do @blog = Blog.new
	end

	describe "push_post" do
		new_post = Post.new("first", Time.new, "content")
	it "pushes a post object into the blog array" do 
		expect(@blog.push_post(new_post)).to eq([new_post])
		end
	end

	describe "posts" do
	it "displays the blog array" do 
		expect(@blog.posts).to eq([])
		end
	end

	it "orders the array from newest to oldest" do 
		new_post1 = Post.new("first", Time.new, "content")
		new_post2 = Post.new("second", Time.new, "more content")
		new_post3 = Post.new("third", Time.new, "the best content")
		@blog.push_post(new_post2)
		@blog.push_post(new_post1)
		@blog.push_post(new_post3)
		expect(@blog.latests_posts).to eq([new_post1, new_post2, new_post3])
	end
end