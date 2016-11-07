Feature: Authorization
#  просто название ткста
  @web
  Scenario: Invalid authorization
#    что делать
  Given I am on "http://www.google.com" site
  #Given When Then But высокоуровневые степы
  When I input in login "Roman_Test"
    And I input in password "123456789"
    And I try to sign in
    Then Error Login message "Хм...Это не похоже на настоящий эл. адрес или номер телефона." displays




#  @web
#  Scenario: Verify image
#    Given I am on "Pinetrest" site
#    When I should see images
#    Then I compare image


