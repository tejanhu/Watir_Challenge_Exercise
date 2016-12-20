# Set up browser
browser = Watir::Browser.new (ENV['BROWSER'] || 'chrome').to_sym
$setup_done = false

wait = browser.driver.manage.timeouts.implicit_wait = 5

Before do 
	  @browser = browser
    @wait = wait

    @app ||= App.new browser,wait
	unless $setup_done
    $setup_done = true
    # This stuff will only run before the first scenario executed. Use it to set up data etc.
  end
end


#at the end of the entire scenarios completion
at_exit do
	browser.close
end