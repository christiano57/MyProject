require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

describe Post do
	before :each do 
		@time = Time.new
		@post = Post.new("first", @time, "content")
	end

	it "shows the title" do
		expect(@post.title).to eq("first")
	end

	it "shows the date" do
		expect(@post.date).to eq(@time)
	end

	it "shows the content" do
		expect(@post.content).to eq("content")
	end
end