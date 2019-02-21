require 'pry'

class Person

    attr_accessor :bank_account
    attr_reader :hygiene, :happiness, :name

    def hygiene=(value)
      if value >= 0 && value <= 10
        @hygiene = value
      elsif value < 0
        @hygiene = 0
      else
        @hygiene = 10
      end
    end


    def happiness=(value)
      if value > 10
      @happiness = 10
      elsif value < 0
        @happiness = 0
      else
        @happiness = value
      end
    end

    def initialize(name)
      @name = name
      self.hygiene = 8
      self.happiness = 8
      self.bank_account = 25
    end


    def happy?()
        if self.happiness > 7
          true
        else
          false
        end
    end

    def clean?()
        if self.hygiene > 7
          true
        else
          false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
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

    def call_friend(person)
      self.happiness += 3
      person.happiness += 3
      "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
      if topic == "weather"
        self.happiness += 1
        person.happiness += 1
        'blah blah sun blah rain'
      elsif topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        'blah blah partisan blah lobbyist'
      else
        'blah blah blah blah blah'
      end
    end
  end


cory_harper = Person.new("Cory Harper")
