*** Settings ***
Documentation     Example test case using the gherkin syntax.
...
...               This test has a workflow similar to the keyword-driven
...               examples. The difference is that the keywords use higher
...               abstraction level and their arguments are embedded into
...               the keyword names.
...
...               This kind of _gherkin_ syntax has been made popular by
...               [http://cukes.info|Cucumber]. It works well especially when
...               tests act as examples that need to be easily understood also
...               by the business people.
Library           CalculatorLibrary.py

*** Test Cases ***
Addition
    Given calculator has been cleared
    When user types "1 + 1"
    and user pushes equals
    Then result is "2"

BODMAS Calculation
    Given calculator has been cleared
    When user types "1 0 * 6 / 2 + 1 5 * 2"
    and user pushes equals
    Then result is "60"

BODMA2 Calculation
    Given calculator has been cleared
    When user types "( 1 0 * 6 / 2 + 1 5 ) * 2"
    and user pushes equals
    Then result is "90"

*** Keywords ***
Calculator has been cleared
    Push button    C

User types "${expression}"
    Push buttons    ${expression}

User pushes equals
    Push button    =

Result is "${result}"
    Result should be    ${result}
