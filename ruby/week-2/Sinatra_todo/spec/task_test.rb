require_relative("../lib/task.rb")

describe Task do
	before :each do @task = Task.new("content")
	end

	describe "complete!" do
	it "gives the boolean value of a completed task" do 
		expect(@task.complete!).to eq(true)
		end
	end

	describe "completed" do
	it "gives the boolean value of a task" do 
		expect(@task.completed).to eq(false)
		end
	end

	describe "make_incomplete!" do
	it "makes a task completed value false" do 
		expect(@task.make_incomplete!).to eq(false)
		end
	end

	describe "delete_task!" do
	it "deletes task from array" do 
		:full_list
		expect(@todo.tasks.delete_task![0]).to eq([@todo.tasks])
		end
	end
end