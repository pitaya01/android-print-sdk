Feature: Home feature

  As an user
	I want to view home screen for Print SDK Sample app 
    and select different options and do print
	
@done
	Scenario: Navigate to home screen
		Given I am on "Home" screen
		Then I select "Image" option
        And I select "Preview" option 
        Then I select "I have one" option 
        
@done
	Scenario: Navigate to home screen using appium
		Given I am on Home screen
		Then I tap on "Image" option
        And I select preview button 
        Then I tap on "I have one" option
        
        
@done
	Scenario: Verify all titles, values and button present in home screen
		Given I am on "Home" screen
        Then I should see the following options:
         |Content Options|
         |Layout Options|
         |Margin Options|
         |Metrics Options|
         |Unique Device Id Per App|
         
@done
	Scenario Outline: Verify all titles, values and button present in home screen
		Given I am on "Home" screen
        And "<default_value>" value should be selected
        When I tap on "<new_selection>" value, it should be selected
        Examples:
         |default_value     |new_selection          |
         |Image             |PDF                    |
         |Center Top        |Center                 |
         |Center Top        |Crop (Ignores Margin)  |
         |Center Top        |Fit                    |
         |Center Top        |Top Left               |
         |None              |Half Inch              |
         |None              |Top Only               |
         |Without Metrics   |With Metrics           |
         |True              |False                  |
         
         
         