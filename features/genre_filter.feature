Feature: Generate Music by Favorite Genre

  As a music lover
  So that I can listen to music by genre
  I want to generate music by genre

  Scenario: generating a playlist by genre without logging in
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Genre" from the Filter by dropdown
      When I fill in "Rock" for "select-playlist"
      And I press "Generate!"
      Then I should be on the genres page
      And I should not see "Invalid Search Parameters"



  Scenario: mood keyword not recognized by Spotify (sad)
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Genre" from the Filter by dropdown
      When I fill in "Bucket Drums" for "select-playlist"
      And I press "Generate"
      Then I should be on the Playlist Curator homepage
      And I should see "Invalid Search Parameters"