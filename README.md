PLEASE FIND THE BELOW FILE STRUCTURE

TEST FRAMEWORK
   |---------|
FEATURES     Gemfile
  |
  |______________________step_definitions
  |                           |
  |                      contact_steps.rb
  |
  |______________________support
  |                        |----------|--------------| 
  |                       env.rb      hooks.rb    pages
  |                                                 |-------|-----------------|--------------|
  |                                               app.rb    base_page.rb contact.rb     home.rb
 contact.feature    


- Test Framework is the main directory that contains the Features directory and Gemfile
- Features contains the step_definitions, feature file and support directory
- Support contains the environment file, hooks file and pages directory
- Pages contains app.rb, base_page.rb, contact.rb and home.rb


Page Object Models (POM) prevent the need to dump all the code into one file, therefore making testing less complicated to manage and develop on a daily basis. In other words, the tests required the more likely it is that it will become more sophisticated, alternatively we can use POM to define all our web elements in 'app.rb' class and use the element definitions in this class in the main test. We may make use of helper classes such as 'base_page.rb', 'contact.rb' and 'home.rb' to extend our design.

Ruby allows software testers to use webdrivers such as Selenium, Watir and Capybara to automate an application with ease, granting access to elements such as a button or a textfield and the methods that may be used to access the values of the elements.

For instance, we can click a button merely by writing the following:

browser.button(text: => 'Post').click

This would simulate a user clicking a button, proving Automation testing to be a more efficient way in both time and cost in respect of the amount of resources that may need to be spent on in order to test an application in relation to a whole project.

Ruby provides specification tool such as Cucumber that understands the language Gherkin written in a domain specific language that everybody in an Agile team environment would understand, hence it has a ubiquitous structure language to enable the whole team to be on the same page i.e: Business Analysts (BAs), Developers, Testers and The Product Owner(s).

The syntax of Gherkin is such that I can write scenarios in the form of reserved keywords:
Given
When
And
Then

These are implemented in the step definitions allowing the tester to go through each step to identify what the expected behaviour should be based on the user stories (features/tasks) requested by the Product Owner.
Thus, Ruby code is written in such a way that in each proposed step evaluates to make such an action defined or condition to be met, i.e: navigating to the Contact Page.





I have quite a bit of refactoring to do, but I felt extremly determined to solve the problem that I was presented and I intend to make further changes and implement my Selenium solution.                             

