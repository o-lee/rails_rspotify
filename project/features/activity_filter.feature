Feature: Generate Music by Favorite Activity

  As a music lover
  So that I can listen to music by my activity
  I want to generate music by my current acitivity

  Given the following songs exist:
  | title                          | Artist                   | Genre        | Mood       | Activity    |
  | Dirty Little Secret            | The All-American Rejects | Alternative  | Happy      | Driving     |
  | Must Be Doin' Somethin' Right  | Billy Currington         | Country      | Romantic   | Relaxing    |
  | Good Directions                | Billy Currington         | Country      | Silly      | Studying    |
  | I Will Not Bow                 | Breaking Benjamin        | Rock         | Angry      | Working out |
  | Have You Forgotten?            | Darryl Worley            | Country      | Sad        | Crying      |
  | Renaissance                    | Steve James, Clairity    | House        | Chill      | Relaxing    |
  And  I am on the Playlist Curator home page

  Scenario: generating a playlist by activity without logging in
    Given I am at the Playlist Curator homepage
    When I click on "Let's get Started"
    Then I should see "Select Categories"
    When I select "Activity"
    Then I should see the activity list
    When I select "Studying"
    Then I should see "Good Directions"
    And I should not see "Dirty Little Secret"

