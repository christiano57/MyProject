class Blog
	attr_accessor :posts
	def initialize
		@posts = []
	end

	def push_post(name)
		@posts.push(name)
	end

	def latests_posts
		@posts.sort {| post1, post2 | post1.date <=> post2.date }
	end
end
