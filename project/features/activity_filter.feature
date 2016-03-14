Feature: Generate Music by Favorite Activity

  As a music lover
  So that I can listen to music by my activity
  I want to generate music by my current activity

  Scenario: generating a playlist by activity without logging in
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I follow "filter" by "Activity"
      #When I fill in "Run" for "select-playlist"
      And I press "Generate!"
      Then I should see "Playlist generated!"
