Feature: Manage Categories
  As a blog administrator
  In order to organize the my articles
  I want to be able to add, edit, and remove categories
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
	
  Scenario: Successfully view the categories page
    Given I am on the new category page
    Then I should see "Categories"
    And I should see "Name"
    And I should see "Keywords"
    And I should see "Permalink"
    And I should see "Description"
    
  Scenario: Create a new category (save)
    Given I am on the new category page
    When I fill in "category_name" with "Test Category"
    And I fill in "category_keywords" with "test keywords"
    And I fill in "category_permalink" with "this_is_some_link"
    And I fill in "category_description" with "A new testing description"
    And I press "Save"
    Then I should see "Category was successfully saved."
    
  Scenario: Edit a category
    Given I am on the new category page
    When I fill in "category_name" with "Test Category (Edit)"
    And I fill in "category_keywords" with "test keywords edit"
    And I fill in "category_permalink" with "this_is_some_link_to_test_edit"
    And I fill in "category_description" with "A new testing instance for edit"
    And I press "Save"
    Then I should see "Test Category (Edit)"
    When I follow "Test Category (Edit)"
    Then I should see "Test Category (Edit)"
    And I should see "test keywords edit"
    And I should see "this_is_some_link_to_test_edit"
    And I should see "A new testing instance for edit"
    When I fill in "category_name" with "Name Change 1"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "Name Change 1"