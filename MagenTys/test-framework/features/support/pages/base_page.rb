class Base_Page
  
   def initialize browser
        @browser = browser  
    end

    def await
    	  wait = 5
        @wait = wait
    end

end