# your code goes here
#Done

class Person

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end
  #name getter
  def name
    @name
  end
  #bank_account getter
  def bank_account
    @bank_account
  end
  #bank_account setter
  def bank_account= (value)
    @bank_account = value
  end

  # happiness_points getter
  def happiness
    @happiness
  end
  #happiness_points setter
  def happiness= (value)
    if value < 0
      @happiness = 0
    elsif value > 10
      @happiness = 10
    else
      @happiness = value
    end
  end

  # hygiene_points getter
  def hygiene
    @hygiene
  end
  #hygiene_points setter
  def hygiene= (value)
    if value < 0
      @hygiene = 0
    elsif value > 10
      @hygiene = 10
    else
      @hygiene = value
    end
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

  def get_paid (salary_amount)
    @bank_account += salary_amount
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(@happiness + 2)
    self.hygiene=(@hygiene - 3)
    return "♪ another one bites the dust ♫"
  end

  def change_happiness(friend, amount)
    self.happiness=(@happiness + amount)
    friend.happiness=(friend.happiness + amount)
  end

  def call_friend(friend)
    self.change_happiness(friend, 3)

    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (friend, topic)
    if topic == "politics"
      self.change_happiness(friend, -2)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.change_happiness(friend, 1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
