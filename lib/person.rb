# your code goes 
require 'pry'

class Person 
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def bank_account=(value)
        @bank_account = value
    end

    def happiness 
        @happiness
    end

    def happiness=(value)
        if value > 0 && value <= 10
            @happiness = value
        elsif value <= 0
            @happiness = 0
        else
            @happiness = 10
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(value)
        if value > 0 && value <= 10
            @hygiene = value
        elsif value <= 0
            @hygiene = 0
        else
            @hygiene = 10
        end
    end

    def happy?
        if happiness > 7 
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7 
            true
        else
            false
        end
    end

    def get_paid(salary)
       @bank_account = @bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(callee)
        self.happiness += 3
        callee.happiness += 3
        "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end