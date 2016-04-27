Feature: Generate Music by Favorite Activity


  As a music lover
  So that I can listen to music by my activity
  I want to generate music by my current activity

  Scenario: generating a playlist by activity without logging in
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Activity" from the Filter by dropdown
      And I fill in "Workout" for "select-playlist"
      And I press "Generate!"
      Then I should be on the activities page
      And I should not see "Invalid ID"



  Scenario: mood keyword not recognized by Spotify (sad)
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Activity" from the Filter by dropdown
      When I fill in "Golf" for "select-playlist"
      And I press "Generate!"
      Then I should be on the Playlist Curator homepage
      And I should see "Invalid ID"