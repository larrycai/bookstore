Feature: free delivery for buying books
  If the customer buy books more than 5 books
  he can get free delivery to the place except Gotland in Sweden
  Scenario Outline: 
    Given one customer <number> of books
    And buy <other_category> 
    When select the address is <address>
    Then order summary is <fee>

    Examples:
    | number| other_category | address     | fee |
    |  6    | no             | karlskrona  |  0  |
    |  5    | no             | karlskrona  |  >0 |
    |  6    | no             | gotland     |  >0 |
    |  6    | usb            | karlskrona  |  >0 |


