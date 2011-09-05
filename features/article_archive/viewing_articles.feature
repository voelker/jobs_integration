Feature: Viewing articles
  In order to view articles
  As a user
  I want to view articles that have been syndicated into NatureJobs

  Scenario: Viewing a syndicated article
    Given a viewable article has been syndicated
    And the heading of the article is "Unmasking the impostor"
    When I go to view the new article

    Then I should see an article
    And it should have the heading "Unmasking the impostor"
    But I should not see "The publishing service is not currently available."
    And I should not see "Rendering Error!"
