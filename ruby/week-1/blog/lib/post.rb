class Post
	attr_accessor :title, :date, :content
	def initialize(title, date, content)
		@title = title
		@date = date
		@content = content
	end
end

class SponsoredPost < Post
	def initialize(title, date, content, sponsored)
		@title = title
		@date = date
		@content = content
		@sponsored = sponsored
	end

	def show_blog
		if @sponsored == "yes"
			sorted_posts = @posts.sort { |page_a, page_b| page_b.date <=> page_a.date }  
			sorted_posts.each { | post |
			puts "******#{post.title}*******\n************\n#{post.content}\n------------" 
		}
		else
			super
		end
	end
end