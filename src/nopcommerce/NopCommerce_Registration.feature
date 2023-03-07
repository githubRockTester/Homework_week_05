Feature: Nopcommerce Registration

  As a user i want to check the Registration functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
  Given:      I open the Google Chrome Browser
  When:       I open the Url https://demo.nopcommerce.com/register
  Then:       I am on Nopcommerce Registration page

  Scenario Outline: I should no be able to register with invalid data on mandatory field (*) of registration page
    When            I enter first name "<First Name>" field
    And             I enter last name "<Last Nam>" field
    And             I enter email address "<Email>" field
    And             I enter password "<Password>" field
    And             I re-enter password "<Confirm Password>"
    And             Click on Registration button
    Then            I can see an error message "<ErrorMessage>"
    And             I am not able to register
    Examples:
      | First Name | Last Nam | Email                   | Password | Confirm Password | ErrorMessage                                      |
      | ""         | Patel    | jimeshpatel78@gmail.com | 123567   | 123567           | Please Enter First Name                           |
      | Jimesh     | ""       | jimeshpatel78@gmail.com | 123567   | 123567           | Please Enter First Name                           |
      | Jimesh     | ""       | ""                      | 123567   | 123567           | Please Enter Email Address                        |
      | Jimesh     | ""       | jimeshpatel78@gmail.com | ""       | 123567           | Please Enter Password                             |
      | Jimesh     | ""       | jimeshpatel78@gmail.com | 123567   | ""               | Please Enter Confirmation Password                |
      | Jimesh     | ""       | jimeshpatel78@gmail.com | 123567   | 123568           | Password and Confirmation Password does not match |
      | ""         | ""       | ""                      | ""       | ""               | Mandatory (*) fields are required                 |

  Scenario:       I should be able to select any one radio button from Gender label of Your Personal Details section
    Given         I am on Gender label of Your Personal Detail section
    When          I select "Male" radio button
    And           I select "Female" radio button
    Then          I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and year from drop sown list of the Date of birth field
    Given           I am on Date Of Birth firld of Your Personal Detail section
    When            I select day "<Day>"
    And             I select month "<Month>"
    And             I select year "<Year>"
    Then            I am able to select Day, Month and Year from the drop down list
    Examples:
      | Day | Month | Year |
      | 01  | March | 1993 |

  Scenario:         I should be able to check ad uncheck the Newsletter box on option section
    Given           I am on Newsletter label on options section
    When            I click on Newsletter checkbox
    Then            I was able to check and uncheck the box next to Newsletter label

  Scenario:         I should be able to register with valid mandatory (*) field data on registration page
    When            I enter first name "Jimesh"
    And             I enter last name "Patel"
    And             I enter Email "jimeshpatel78@gmail.com"
    And             I enter password "123567"
    And             I enter password "123567"
    And             I click on Register button
    Then            I am able to register successfully