Feature: Generate Music by my Mood

  As a music lover
  So that I can listen to music by my mood
  I want to generate music by my current mood

  Scenario: generating a playlist by mood without logging in
      Given I am on the Playlist Curator homepage
      Then I should see "Filter by..."
      When I select "Emotion" from the Filter by dropdown
      #When I fill in "Run" for "select-playlist"
      And I press "Generate!"
      Then I should see "Playlist generated!"
