Feature: I should be able to see homepage

  Background: I should be able to see homepage
    Given     I enter URL " https://demo.nopcommerce.com/" in browser
    And       I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When      I am on home page
    Then      I should be able to see top menu tabs with "<Categories>"
    Examples:
      | Categories       |
      | Computer         |
      | Electronic       |
      | Apparel          |
      | Digital Download |
      | Books            |
      | Jewellery        |
      | Gift Card        |

  Scenario Outline: I should be able to see Book page with filters
    When      I select Book category from top menu tabs on home page
    Then      I should be navigated to Book category
    And       I should be able to see "<Filters>"
    Examples:
      | Filters  |
      | Short by |
      | Display  |
      | Grid     |
      | List     |

  Scenario Outline: I should be able to see list of items of each filter
    Given     I am on book page
    When      I click on "<Filter>"
    Then      I should be able to see "<List>" in dropdown menu
    Examples:
      | Filter  | List                                                                           |
      | Sort by | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display | 3 ,6, 9                                                                        |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given   I am on Book page
    When    I click on "<Filter>"
    And     I click on "<Option>"
    Then    I should be able to choose any filter option with specific result
    And     I should be able to see "<result>"
    Examples:
      | Filter  | Option             | result                                                         |
      | Sort by | Name: A to Z       | Sorted product with product name in alphabetical order         |
      | Sort by | Name: Z to A       | Sorted product with product name in reverse alphabetical order |
      | Sort by | Price: Low to High | Sorted product with the price in descending order              |
      | Sort by | Price: High to Low | Sorted product with the price in ascending order               |
      | Sort by | Created on         | Recently added product should be show first                    |
      | Display | 3                  | 3 products in a page                                           |
      | Display | 6                  | 6 products in a page                                           |
      | Display | 9                  | 9 products in a page                                           |

  Scenario Outline: I should be able to see product display format type as per given picture in srs document
    Given   I am on Book page
    When    I click on "<Display Format Icon>"
    Then    I should be able to see product display format according format type as per given picture in SRS document
    Examples:
      | Display Format Icon |
      | Grid                |
      | List                |






