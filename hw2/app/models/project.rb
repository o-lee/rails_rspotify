class Project < ActiveRecord::Base
  def  self.all_users
   all_projects = self.all
   all_users = []
   all_projects.each do |project|
     all_users.push(project.user)
     end
      #["Coulson", "Ward", "May", "Skye", "Fitz", "Simmons"]
   return all_users.uniq.sort

  end
end
