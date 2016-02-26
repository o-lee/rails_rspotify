class Project < ActiveRecord::Base
	def self.getUsers
		return ['Fitz', 'May', 'Simmons', 'Coulson', 'Skye', 'Ward']
	end
end
