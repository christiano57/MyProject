class SponsoredPost < Post
	def initialize
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