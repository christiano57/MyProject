class Contact < ActiveRecord::Base
	def self.recent_contacts(num)
		con = Contact.limit(num)
		con.sort_by { |contact| contact.name.downcase }
	end
end
