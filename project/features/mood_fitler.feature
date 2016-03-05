Feature: Generate Music by Current Mood
   User would like to auto-generate music based on their current mood.

   Provided s/he has access to Playlist Curator homepage, s/he should be able to autogenerate a music playlist.  The Playlist Curator website has a selection of moods where a user can generate a playlist based on this selection and save (or export) this playlist to their account.

   Given the following songs exist:
   | title                          | Artist                   | Genre        | Mood       | Activity    |
   | Dirty Little Secret            | The All-American Rejects | Alternative  | Happy      | Driving     |
   | Must Be Doin' Somethin' Right  | Billy Currington         | Country      | Romantic   | Relaxing    |
   | Good Directions                | Billy Currington         | Country      | Silly      | Studying    |
   | I Will Not Bow                 | Breaking Benjamin        | Rock         | Angry      | Working out |
   | Have You Forgotten?            | Darryl Worley            | Country      | Sad        | Crying      |
   | Renaissance                    | Steve James, Clairity    | House        | Chill      | Relaxing    |
   And  I am on the Playlist Curator homepage

   Scenario: I want to generate a playlist based on my mood without an account
      When I click on "Let's get Started"
      Then I should see "Select Categories"
      When I select "Mood"
      Then I should see the mood list
      When I select "Chill"
      Then I should see "Renaissance"

   Scenario: I want to generate a playlist from his account with an account
      Given I am on the user homepage
      Then I should see "Select Categories"
      When I select "Mood"
      Then I should see the mood list
      When I select "Happy"
      Then I should see "Dirty Little Secret"
