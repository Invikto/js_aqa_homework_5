Feature: ATM withdraw
  As an Account Holder
  In Order to get money
  I want to withdraw cash from an ATM

  Scenario Outline: <scenario_title>
    Given my account balance is "<account_balance>"
    And the ATM contains "<ATM_balance>"
    When I withdraw "<withdrawal_amount>"
    Then I get "<message>" message

    Examples:
      | scenario_title                           | account_balance | ATM_balance | withdrawal_amount | message                               |
      | Account has sufficient funds             | 500             | 600         | 50                | Take your money!                      |
      | Account has insufficient funds           | 500             | 600         | 550               | You don't have enough money!          |
      | The ATM has insufficient amount of money | 500             | 150         | 300               | The machine is not have enough money! |
