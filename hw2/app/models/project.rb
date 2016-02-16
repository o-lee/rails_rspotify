class Project < ActiveRecord::Base
  def self.all_users
    all_projects = Project.all
    all_users = []
    all_projects.each do |project|
      all_users.push(project.user)
    end
    return all_users.uniq.sort
  end
end
