Feature: display list of tasks filtered by user
 
  As a developer
  So that I can quickly browse tasks assigned to a user
  I want to see tasks assigned to certain users

Background: tasks have been added to database

  Given the following tasks exist:
  | title                   | user    | due_date     |
  | Add User Profile        | Coulson | 25-Nov-1992  |
  | Create Login Modal      | Skye    | 26-Oct-1984  |
  | Fix header Display      | May     | 21-Jul-1989  |
  | Add Mobile support      | Fitz    | 10-Aug-2011  |
  | Get fastload working    | Fitz    | 5-Jan-2001   |
  | Add Site overview       | Coulson | 25-Apr-2001  |
  | Improve navigation      | Fitz    | 6-Apr-1968   |
  | Raid cookie jar         | Ward    | 5-Nov-2004   |
  | Improve security        | Simmons | 12-Jun-1981  |
  | Steal milk              | May     | 21-Jun-2000  |

  And  I am on the ProjectManager home page

Scenario: restrict to tasks owned by 'Coulson' or 'Skye'
  # enter step(s) to check the 'Coulson' and 'Skye' checkboxes
  # enter step(s) to uncheck all other checkboxes
  # enter step to "submit" the search form on the homepage
  # enter step(s) to ensure that Coulson's and Skye's tasks are visible
  # enter step(s) to ensure that other tasks are not visible

Scenario: all users selected
  # see assignment


Scenario: no users selected
  # you are NOT required to do this one, but you can do it for extra practice