Feature: Generate Music by Favorite Genre

  As a music lover
  So that I can listen to music by genre
  I want to generate music by genre

  Scenario: generating a playlist by genre without logging in
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Genre" from the Filter by dropdown
      When I fill in "Funk" for "select-playlist"
      And I press "Generate!"
      Then I should see "Playlist generated!"

      # 3-0 features
      Then I should be on the "funk" page
      And I should see "James Brown" under Artist
      And I should not see "Metallica" under Artist

  Scenario: mood keyword not recognized by Spotify (sad)
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Genre" from the Filter by dropdown
      When I fill in "Bucket Drums" for "select-playlist"
      Then I should see "Playlist for Bucket Drums does not exist under genre"
      And I should be on the Playlist Curator homepage