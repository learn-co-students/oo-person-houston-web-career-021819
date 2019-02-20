# your code goes here
class Person 
    def initialize(name)
        @name = name
        @last_name = last_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    #getters:
    def name
        @name
    end

    def last_name
        @last_name
    end

    def bank_account
        @bank_account
    end

    def happiness
        @happiness
    end

    def hygiene
        @hygiene
    end

    #setters:
    def hygiene=(value)
        @hygiene = value
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happiness=(value)
        @happiness = value
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def bank_account=(value)
        @bank_account = value
    end

    def clean?
        if @hygiene > 7
            return true
        else 
            return false
        end
    end 

    def happy?
        if @happiness > 7
            return true
        else 
            return false
        end
    end 

    def get_paid(salary_amount)
        self.bank_account = @bank_account + salary_amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2

        self.hygiene = @hygiene-3
        
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            friend.happiness = friend.happiness - 2
            return "blah blah partisan blah lobbyist"    
        elsif topic == "weather"
            self.happiness = @happiness + 1
            friend.happiness = friend.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"  
        end
    end
end

