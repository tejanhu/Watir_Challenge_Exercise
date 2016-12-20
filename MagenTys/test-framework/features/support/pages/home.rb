class Home < Base_Page

    def visit
        @browser.goto "https://magentys.io/"
    end

end