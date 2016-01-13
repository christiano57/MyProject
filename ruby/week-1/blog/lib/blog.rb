class Blog
	attr_accessor :posts
	def initialize
		@posts = []
	end

	def push_post(name)
		@posts.push(name)
	end

	def publish_front_page
		sorted_posts = @posts.sort { |page_a, page_b| page_b.date <=> page_a.date }  
		puts sorted_posts[0].title
		puts sorted_posts[0].content
	end

	def show_blog
		sorted_posts = @posts.sort { |page_a, page_b| page_b.date <=> page_a.date }  
		sorted_posts.each { | post |
			puts "#{post.title}\n************\n#{post.content}\n------------" 
		}
	end
end





