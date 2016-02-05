class Concert < ActiveRecord::Base
	has_many :comments

   validates :artist, presence: true

   validates :venue, presence: true
   
   validates :city, presence: true
   
   validates :date, presence: true
   
   validates :price, presence: true
   
   validates :description, presence: true

   def self.concerts_today
   		self.where(date: Date.new).take!
   		end
   end
end