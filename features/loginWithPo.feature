Feature: Login

  Scenario: Login with invalid credentials
    When I go to "https://viktor-silakov.github.io/course-sut/index.html?quick"
    And I enter credentials:
      | login         | password      |
      | walker@jw.com | password1     |
      | password      | walker@jw.com |
      | admin         | admin         |
      | user          | 123           |
      | dlink         | dlink         |
    Then "Fail to login" message appears

  Scenario: Login with empty login
    When I go to "https://viktor-silakov.github.io/course-sut/index.html?quick"
    And I enter credentials:
      | login | password |
      |       | password |
      |       |          |
    Then "Login is empty" message appears

  Scenario: Login with empty password
    When I go to "https://viktor-silakov.github.io/course-sut/index.html?quick"
    And I enter credentials:
      | login         | password |
      | walker@jw.com |          |
      | user          |          |
      | admin         |          |
    Then "Password is empty" message appears

  Scenario: Login as a suspended user
    When I go to "https://viktor-silakov.github.io/course-sut/index.html?quick"
    And I login as: "old_walker@jw.com", "password1"
    Then "The user is suspended" message appears
