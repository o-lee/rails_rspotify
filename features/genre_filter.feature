Feature: Generate Music by Favorite Genre

  As a music lover
  So that I can listen to music by genre
  I want to generate music by genre

  Scenario: generating a playlist by genre without logging in
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Genre" from the Filter by dropdown
      #When I fill in "Run" for "select-playlist"
      And I press "Generate!"
      Then I should see "Playlist generated!"
