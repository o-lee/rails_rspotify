Feature: display list of tasks sorted by different criteria
 
  As an developer
  So that I can quickly browse tasks
  I want to see tasks sorted by title or due date

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

  And I am on the ProjectManager home page

Scenario: sort tasks alphabetically
  When I follow "Task Title"
  # your steps here

Scenario: sort tasks in increasing order of due date
  When I follow "Due Date"
  # your steps here
