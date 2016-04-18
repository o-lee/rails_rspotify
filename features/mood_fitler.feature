Feature: Generate Music by my Mood

  As a music lover
  So that I can listen to music by my mood
  I want to generate music by my current mood

   Scenario: generating a playlist by mood without logging in
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Mood" from the Filter by dropdown
      And I fill in "Sad" for "select-playlist"
      And I press "Generate!"

      # 3-0 features
      And I should see "Shane Alexander" 
      And I should not see "Metallica"

  Scenario: mood keyword not recognized by Spotify (sad)
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Mood" from the Filter by dropdown
      When I fill in "Grumpy" for "select-playlist"
      #Then I should see "Playlist for Grumpy does not exist under mood"
      And I should be on the Playlist Curator homepage
