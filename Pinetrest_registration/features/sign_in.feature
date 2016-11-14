Feature: Authorization

  @web
  Scenario: Successful authorization

    Given I am on "pinetrest" site
    #может объединить ввод логина и пароля и клик на логин баттон?
    When I input in login "bigbubble@bigmir.net"
    And I input in password "bigbubble"
    And Perform login
    Then Verify succesfful log in