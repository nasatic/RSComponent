Feature: Categorisation of Rs Components web site.

  Scenario: 1. Verify Batteries category.
    Given user is logged in with valid credentials
    And user navigates to the home page
    When user clicks on Batteries tab
    Then user is taken to the  batteries category page
    And user is presented with batteries category products


  Scenario: 2. Select a battery product.
    Given user is presented with batteries category products
    When user click on Battery Holders and Mounts tab
    Then user is taken to Battery Holders and Mounts page
    And user can select desired product


  Scenario: 3. Verify Cabled and Wires category.
    Given user is logged in with valid credentials
    And user navigates to the home page
    When user clicks on Cabled and Wires tab
    Then user is taken to the  Cabled and Wires category page
    And user can select any Cable Conduits product


  Scenario Outline: 4. Apply filter to cable and wires products.
    Given user is taken to the  Cabled and Wires category page
    When user selects cable and wires category as "<popular categories>"
    Then user is navigated to the product category section
    And category should have "<no-of-products>" products

    Examples:
      | popular categories | no-of-products |
      | cable conduits     | 441            |
      | cable trunking     | 45             |
      | cable sleeves      | 1              |

  Scenario Outline: 5. Add Torches products to cart.
    Given user is logged in with valid credentials
    And user navigates to the home page
    And user clicks on Torches tab
    And user scrolls down to the price breakdown grid
    When user adds "<no-of-item>" items of price category of "<price category>"
    Then the price basket should be inserted with a total of "<cart-price>"

    Examples:
      | no-of-item | price category | cart-price |
      | 4          | £154.53        | £ 618.12   |
      | 8          | £197.43        | £  1579.44 |
      | 16         | £27.79         | £  444.64  |
