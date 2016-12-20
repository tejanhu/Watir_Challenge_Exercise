class App
    def initialize browser,wait
        @browser = browser
        @wait = wait
    end

    def base_page
        @base_page ||= Base_Page.new @browser
    end

    def home
        @home ||= Home.new @browser
    end

    def contact
        @contact ||= Contact.new @browser
    end

end