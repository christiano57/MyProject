require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative('lib/post.rb')
require_relative('lib/blog.rb')

new_blog = Blog.new
post = Post.new("title", Time.new, "content")
new_blog.push_post(post)


get "/" do
@posts = new_blog.posts
	erb(:home)
	end

get "/postdetails/:index/" do
	@posts = new_blog.posts
	@index = params[:index].to_i
	@title = @posts[@index].title
	@date = @posts[@index].date
	@content = @posts[@index].content
	erb(:post_details)
	end

get "/new_post" do
  erb(:post_form)
end

post "/upload successfull" do
  
end