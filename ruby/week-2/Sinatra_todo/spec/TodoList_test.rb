require_relative("../lib/TodoList.rb")
require_relative("../lib/task.rb")
require "pry"
describe TodoList do
	before :each do 
		@todo = TodoList.new
		@task1 = Task.new("catch mew")
		@task2 = Task.new("catch mewtwo")
		@task3 = Task.new("catch abra")
		@todo.add_task(@task1) 
		@todo.add_task(@task2) 
		@todo
		# binding.pry
	end

	describe "add_task" do 
		it "adds a task to the tasks array in the todo" do
			expect(@todo.add_task(@task3)).to eq(@todo[2])
		end
	end

	# describe "add_task" do 
	# 	it "adds a task to the todo array" do
	# 		expect(@todo.add_task(@task1)).to eq([@task1])
	# 	end
	# end
end