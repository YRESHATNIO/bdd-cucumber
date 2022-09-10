Feature: Test scenario for Git

  Scenario: Login to GitHub

    Given User is on "Login Page"

    When User enters username as "YRESHATNIO" and password on "Login Page"

    Then User is successfully navigated to the "https://github.com/"
    And User info "YRESHATNIO" on "Home Page" is present on navigation panel

  Scenario Outline: Login to GitHub (negative)

    Given User is on "Login Page"

    When User enters username as "<username>" and password as "<password>" on "Login Page"

    Then User gets error message "Incorrect username or password." on "Login Page"

    Examples:
      | username       | password |
      | YRESHATNIO     | qwerty   |
      | qwerty         | qwerty   |


