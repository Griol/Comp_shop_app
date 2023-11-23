class ApplicationController < ActionController::Base
    def hello
        render html: "Hello world!"
    end
    def bye
        render html: "Пока пока"
    end

    
end
