class Book
    def initialize(title, rating, author, isOut)
        @title, @rating, @author, @isOut = title, rating, author, isOut
    end

    def isAvailable()
        if @isOut == false
            return true
        else
            return false
        end
    end

    def setAvailability(status)
        @isOut = status
    end

    def info()
        puts "#{@title} by #{@author} has a #{@rating} rating."
        puts "Is Available: #{!@isOut}"
    end
end