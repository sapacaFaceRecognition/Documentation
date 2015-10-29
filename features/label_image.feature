Feature: Label Image

  Scenario: Start Label Image
    Given The application detected a face on the uploaded image
    And   The user verified the result
    When  The application asks to add additional information about the person on image
    Then  A formular will appear for adding additional information

  Scenario: User input is valid
    Given The application asks the user to add additional information
    When  The users enters valid input
    Then  A confirm message will be printed on the screen
    And   The user will be redirected to the previous page

  Scenario: User input is invalid
    Given The application asks the user to add additional information
    When  The users enters not valid input
    Then  An error message will be printed on the screen