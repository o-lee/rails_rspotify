Feature: Generate Music by Favorite Artist

  As a music lover
  So that I can listen to music by my artist
  I want to generate music by artist

  Scenario: generating a playlist by artist without logging in
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Artist" from the Filter by dropdown
      And I fill in "David Bowie" for "select-playlist"
      And I press "Generate!"

      # 3-0 features
      Then I should see "David Bowie"
      And I should not see "Metallica"

  Scenario: mood keyword not recognized by Spotify (sad)
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Artist" from the Filter by dropdown
      When I fill in "Led Floyd" for "select-playlist"
      #Then I should see "Invalid Artist"
      And I should be on the Playlist Curator homepage