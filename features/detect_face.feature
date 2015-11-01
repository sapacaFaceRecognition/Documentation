Feature: Detect Face
  As a logged in user
  I want to detect faces from image sources
  So I can use the detected faces for face recognition

  Scenario: Start Upload Image
    Given The user is on the "Detect Face" page
    When  The user hits the button "Upload Image" on the "Face Detection" screen
    Then  A File Chooser will appear and the user is asked to select an image file

  Scenario: Upload Image
    Given The user has chosen an image file successfully
    When  The user hits the "Ok" button of the File Choser
    Then  The application will upload the selected image to the db

  Scenario: Upload Image (fail)
    Given The user has chosen an image file not successfully
    When  The user hits the "Ok" button of the File Choser
    Then  The application will show an error message

  Scenario: Start Search Faces
    Given The user uploaded an image successfully
    When  The application uploaded the image to the db
    Then  The application will search for faces on the image

  Scenario: Verify by User
    Given The user uploaded an image successfully
    And   The application uploaded the image successfully to the db
    When  The application found at least one face on the image
    Then  The application will show a new window with the image of the found face
    And   Ask the user if the found face is actually a face

  Scenario: Manipulate Image
    Given The application detected a face
    When  The user verified the found faces
    Then  The application will manipulate the images of the found faces

  Scenario: Start Label image with additional information
    When  The application manipulated an image
    Then  The application will ask the user to add additional information about the person