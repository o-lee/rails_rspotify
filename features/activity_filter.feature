Feature: Generate Music by Favorite Activity

  As a music lover
  So that I can listen to music by my activity
  I want to generate music by my current activity

  Scenario: generating a playlist by activity without logging in
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Activity" from the Filter by dropdown
      And I fill in "Study" for "select-playlist"
      And I press "Generate!"
      Then I should see "Playlist generated!"

      # 3-0 features
      Then I should be on the "study" page
      And I should see "Study Focus" under Artist
      And I should not see "Metallica" under Artist

  Scenario: mood keyword not recognized by Spotify (sad)
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Activity" from the Filter by dropdown
      When I fill in "Golf" for "select-playlist"
      Then I should see "Playlist for Golf does not exist under activity"
      And I should be on the Playlist Curator homepage
