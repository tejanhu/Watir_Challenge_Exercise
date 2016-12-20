class Contact < Base_Page

  def visit
		@browser.goto "https://magentys.io/contact/"
	end

	def view_blanks
    @browser.div(class:'one_half').wait_until_present
    @browser.div(class:'one_half last').wait_until_present
    @browser.span(class:'wpcf7-form-control wpcf7-radio').wait_until_present
	end

	def send
    @browser.button(:value => 'Send').wait_until_present.click
	end


	def enter_details
		# sleep 2
		binding.pry
    @browser.span(:text => 'Surrey').click
    @browser.text_field(:name => 'your-name').wait_until_present.set 'TJ'
    @browser.text_field(:name => 'your-email').wait_until_present.set 'tejanahmedhu@gmail.com'
    @browser.text_field(:name => 'tel-451').wait_until_present.set '07765329560'
    @browser.text_field(:name => 'your-subject').wait_until_present.set 'testing'
    @browser.textarea(:name => 'your-message').wait_until_present.set 'Hello World'
	end


	def verify_error
    @browser.span(:text => 'Please select an office!').present?
	end

  def verify_message_sent
    @browser.div(:text => 'Thank you. Your message has been sent successfully').present?
	end

end