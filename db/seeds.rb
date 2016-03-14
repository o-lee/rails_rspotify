# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#This is a very incomplete list- features to be added: Logins, accessibility, tasks to be completed later, view of completed tasks, and sorting and filtering of all tasks
projects = [{:title => 'Create new user story' , :user => 'Coulson' , :due_date => '08-Oct-2014', :description => 'As a user, I want to be able to create a new user story, so that I can later assign individual features (contained within the user story) to teammates' , :extended_description => 'Note that a user story may include multiple features, where each feature contains  one or more scenarios. A scenario contains a 3-8 steps.'},
      {:title => 'Create new feature', :user => 'Fitz', :due_date => '09-Oct-2014', :description => 'As a project manager, I want to create features, so that I can assign individual features to my project team',  :extended_description => 'A feature is one element of a user story.  It is made up of multiple scenarios, each of which contains 3-8 steps.'},
      {:title =>  'Create a new scenario', :user => 'Simmons', :due_date => '09-Oct-2014', :description => 'As a project manager, I want to create a scenario, so that I can assign individual scenarios for my project team to implement', :extended_description => 'A scenario is one aspect of a feature. It should be able to be completed in 3-8 steps.'},
      {:title =>  'View all scenarios, features, and user stories', :user => 'Simmons', :due_date => '09-Oct-2014', :description => 'As a team member, I want to be able to see existing scenarios, features, and user stories, so that I can accept scenarios or groups of scenarios (perhaps full features)', :extended_description => 'No extra data'},
      {:title =>  'Edit scenarios, features, and user stories', :user => 'May', :due_date => '10-Oct-2014', :description => 'As a project manager, I want to edit existing scenarios, features, and user stories, so that I can update all tasks based on new customer feedback, modify due dates, and reassign ownership',  :extended_description => 'No extra data at this time'},
      {:title =>  'Edit scenarios, features, and user stories', :user => 'May', :due_date => '10-Oct-2014', :description => 'As a team member, I want to edit existing scenarios, features, and user stories, so that I can update all tasks based on new customer feedback, modify due dates, and relinquish ownership of tasks', :extended_description => 'If the project member realizes that they cannot complete a task, they should be able to release the task. Notifications and notes should be sent to the team to let them know there is an issue'},
      {:title =>  'Send notifications to the team', :user => 'Fitz' , :due_date => '11-Oct-2014', :description => 'As a team member, I want to send an announcement to the team about task completion, task hold-ups, and information that is needed, so that I can let my team members know status updates and let them know when issues arise that may jeoporadize the task.', :extended_description => 'Notifications should be sent via email to team members. All notifications will be sent to all team members.'},
      {:title =>  'Send notes/updates to the team', :user => 'Fitz' , :due_date => '08-Oct-2014', :description => 'As a team member, I want to be able to write notes about each task while I am completing it, so that I can let my team members know, so that my team members know that I am making progress and what decisions and issues I have run into along the way', :extended_description => 'Notes will be displayed on screen only.  All team members can see all notes upon logging into the system.'},
]

projects.each do |task|
  Project.create!(task)
end
