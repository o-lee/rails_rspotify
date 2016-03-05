Feature: Generate Music by Artist

  As a music lover
  So that I can listen to music by my favorite artist
  I want to generate music by my favorite artist

  Given the following songs exist:
  | title                          | Artist                   | Genre        | Mood       | Activity    |
  | Dirty Little Secret            | The All-American Rejects | Alternative  | Happy      | Driving     |
  | Must Be Doin' Somethin' Right  | Billy Currington         | Country      | Romantic   | Relaxing    |
  | Good Directions                | Billy Currington         | Country      | Silly      | Studying    |
  | I Will Not Bow                 | Breaking Benjamin        | Rock         | Angry      | Working out |
  | Have You Forgotten?            | Darryl Worley            | Country      | Sad        | Crying      |
  | Renaissance                    | Steve James, Clairity    | House        | Chill      | Relaxing    |
  And  I am on the Playlist Curator home page

  Scenario: Generate a playlist by artist without logging in
    When I click on "Let's get Started"
    Then I should see "Select Categories"
    When I select "Artist"
    And I type "Darryl Worley" into the textbox
    Then I should see "Have You Forgotten?"
    And I should not see "Dirty Little Secret"

  Scenario: Filter artist that does not exist (sad path)
    When I follow "Let's get Started"
    Then I should see "Select Categories"
    When I select "Artist"
    And I click on text_box
    And I type "Taylor Swift" into the textbox
    Then I should see "Artist does not exist"