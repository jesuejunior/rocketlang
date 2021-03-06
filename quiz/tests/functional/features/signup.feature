Feature: Signup in the application

  Background:
    Given An user with username "neko"
    And An user with email "carol@hotmail.com"


  Scenario: Successful signup
    Given Roberto doesn't know english and find rocketlang
    When He goes to the signup form and in the <field> he types <input>
    Then He succesfuly singup and is redirect to the home page

      | e-mail               | roberto@gemail.com|
      | username             | roberto_roberto|
      | password             | q1w2e3|
      | password_confirmation| q1w2e3|


  Scenario: Can't signup with blank e-mail
    Given Caroline is a student and wants to learn english
    When Filling the form she does not type in the email input
    Then She sees "Email: - This field is required."

  Scenario: Can't signup with existing e-mail
    Given Caroline is a student and wants to learn english
    When Filling the form she type in the email input "carol@hotmail"
    Then She sees "He already have an user using this email"

  Scenario: Can't signup with blank username
    Given Fernando is preparing himself to travel to USA and wants to learn english
    When Filling the form he leave the username input blank
    Then He sees "Username: - This field is required."


  Scenario: Can't signup with existing username
    Given Fernando is preparing himself to travel to USA and wants to learn english
    When Filling the form he type in the username input "neko"
    Then He sees "He already have an user using this username"

  Scenario: Can't signup with blank password
    Given Fernando is preparing himself to travel to USA and wants to learn english
    When Filling the form he leave the password input blank
    Then He sees "Password: - This field is required."

  Scenario: Can't signup with blank password_confirmation
    Given Fernando is preparing himself to travel to USA and wants to learn english
    When Filling the form he leave the password_confirmation input blank
    Then He sees "Password Confirmation: - This field is required."

  Scenario: Can't signup with different password and password_confirmation
    Given Fernando is preparing himself to travel to USA and wants to learn english
    When Filling the form he leave the username input blank
    Then He sees "Password confirmation:  - The two password fields didn't match."
