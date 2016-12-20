Given(/^I am on the home page$/)do
      @app.home.visit
      @app.home.await	
end

Given(/^I am on the contact page$/)do
      @app.contact.visit
      @app.contact.await
end

When(/^I click send without (.*)$/)do |contact_details|
      @app.contact.view_blanks
      @app.contact.send
end

Then(/^I should see an error message$/)do 
     binding.pry
     @app.contact.verify_error
     binding.pry
end

And(/^I enter my contact details$/)do
     binding.pry
     @app.contact.enter_details
     binding.pry
end

When(/^I click send with (.*)$/)do |contact_details|
      binding.pry
      @app.contact.send
      binding.pry
end

Then(/^I expect my message to be sent$/)do |contact_details|
     binding.pry
     @app.contact.verify_message_sent
     binding.pry
end

