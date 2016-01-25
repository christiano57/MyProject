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
	# x = 0
	# x +=1
  erb(:post_form)
end

post "/upload success" do
	title = params[:title]
	content = params[:content]
	date = Time.new

	Post.new(title, date, content)
	erb(:upload_success)
end








